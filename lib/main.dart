import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas Material Widget"),
          elevation: 10,
          backgroundColor: Colors.purple,
        ),
        // ignore: prefer_const_constructors
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                "Hallo! Saya Yulia Taryana, dan ini tugas saya.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                      color: Colors.purple,
                      onPressed: () {
                        showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Bagaimana?'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Text('Apakah sudah benar?'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Belum'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Sudah'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      });
                    },
                child: Text(
                  "OPEN",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ],
          ),
        ],
      )),
    ));
  }
}