import 'package:flutter/foundation.dart';
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
          title: const Text('ElevatedButton Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action to be performed when the button is pressed
                  if (kDebugMode) {
                    print('ElevatedButton pressed!');
                  }
                },
                child: const Text('Click me'),
              ),
              TextButton(
                onPressed: () {
                  // Action to be performed when the button is pressed
                  if (kDebugMode) {
                    print('TextButton pressed!');
                  }
                },
                child: const Text('Click me'),
              ),
              OutlinedButton(
                onPressed: () {
                  // Action to be performed when the button is pressed
                  if (kDebugMode) {
                    print('TextButton pressed!');
                  }
                },
                child: const Text('Click me'),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Your action here
                },
              ),
              FloatingActionButton(
                onPressed: () {
                  // Your action here
                },
                child: const Icon(Icons.add),
              ),
              GestureDetector(
                onTap: () {
                  // Your action here
                },
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.blue,
                  child: const Text('Custom Button'),
                ),
              ),
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
