-- Q1
CREATE TABLE `departments`(
  department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Q2
ALTER TABLE people ADD department_id INT(10) UNSIGNED COMMENT 'emailの後ろに追加する' AFTER email;

-- Q3
--- 部署
INSERT INTO departments (name) VALUES 
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');
--- pepole
INSERT INTO people (name, email, department_id, age, gender) VALUES
('佐藤 太郎', 'taro.sato@example.local', 1, 30, 1),
('鈴木 花子', 'hanako.suzuki@example.local', 1, 25, 2),
('高橋 次郎', 'jiro.takahashi@example.local', 1, 28, 1),
('田中 美咲', 'misaki.tanaka@example.local', 2, 22, 2),
('伊藤 健一', 'kenichi.ito@example.local', 2, 35, 1),
('渡辺 玲子', 'reiko.watanabe@example.local', 2, 27, 2),
('山本 大輔', 'daisuke.yamamoto@example.local', 2, 32, 2),
('中村 彩', 'sa.nakamura@example.local', 3, 26, 2),
('小林 翔太', 'shota.kobayashi@example.local', 4, 29, 1),
('加藤 真由美', 'mayumi.kato@example.local', 5, 24, 2);
--- reports
INSERT INTO reports (person_id, content) VALUES
(1, '営業部の佐藤太郎です。今月の売上は順調です。'),
(2, '営業部の鈴木花子です。新しいクライアントと契約しました。'),
(3, '営業部の高橋次郎です。来週のプレゼン準備を進めています。'),
(4, '開発部の田中美咲です。新機能の設計が完了しました。'),
(5, '開発部の伊藤健一です。コードレビューを行いました。'),
(6, '開発部の渡辺玲子です。バグ修正に取り組んでいます。'),
(7, '開発部の山本大輔です。パフォーマンス改善を実施中です。'),
(8, '経理部の中村彩です。月次決算の準備をしています。'),
(9, '人事部の小林翔太です。新入社員の研修計画を立てています。'),
(10, '情報システム部の加藤真由美です。社内ネットワークの監視を強化しています。');

-- Q4
UPDATE people SET department_id = 1 where person_id = 1;
UPDATE people SET department_id = 2 where person_id = 2;
UPDATE people SET department_id = 2 where person_id = 3;
UPDATE people SET department_id = 3 where person_id = 4;
UPDATE people SET department_id = 4 where person_id = 6;
