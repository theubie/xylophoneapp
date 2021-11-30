import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber = 1, Color keyColor = Colors.red}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: keyColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(noteNumber: 1, keyColor: Colors.red),
                buildKey(noteNumber: 2, keyColor: Colors.orange),
                buildKey(noteNumber: 3, keyColor: Colors.yellow),
                buildKey(noteNumber: 4, keyColor: Colors.green),
                buildKey(noteNumber: 5, keyColor: Colors.teal),
                buildKey(noteNumber: 6, keyColor: Colors.blue),
                buildKey(noteNumber: 7, keyColor: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
