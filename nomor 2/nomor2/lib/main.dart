import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.Yellow,
      ),
      home: const MyHomePage(title: 'Praktikum Nomor 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = false;

  void _isVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isVisible ? const Text('Tasya Nurpadilah') : const Text('Tasya'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _isVisible,
          tooltip: 'Increment',
          child: const Icon(Icons
              .add)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
