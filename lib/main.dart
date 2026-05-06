import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WorkshopPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WorkshopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Kampus"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          workshopCard(
            "Flutter Basic",
            "10 Mei 2026",
            "Lab Komputer",
            "20 orang",
          ),
          workshopCard(
            "UI/UX Design",
            "12 Mei 2026",
            "Aula Kampus",
            "30 orang",
          ),
        ],
      ),
    );
  }

  Widget workshopCard(
      String judul, String tanggal, String lokasi, String kuota) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text("Tanggal: $tanggal"),
            Text("Lokasi: $lokasi"),
            Text("Kuota: $kuota"),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Daftar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}