-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: buildon
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `LogApp_camera`
--

DROP TABLE IF EXISTS `LogApp_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogApp_camera` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogApp_camera`
--

LOCK TABLES `LogApp_camera` WRITE;
/*!40000 ALTER TABLE `LogApp_camera` DISABLE KEYS */;
INSERT INTO `LogApp_camera` VALUES (1,'CAM1','Floor 2'),(2,'CAM2','Floor 4'),(3,'CAM3','Floor 4'),(4,'CAM4','Floor 3'),(5,'CAM5','Floor 3'),(6,'CAM6','Floor 4'),(7,'CAM7','Floor 1'),(8,'CAM8','Floor 1'),(9,'CAM9','Floor 4'),(10,'CAM10','Floor 1');
/*!40000 ALTER TABLE `LogApp_camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogApp_person`
--

DROP TABLE IF EXISTS `LogApp_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogApp_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogApp_person`
--

LOCK TABLES `LogApp_person` WRITE;
/*!40000 ALTER TABLE `LogApp_person` DISABLE KEYS */;
INSERT INTO `LogApp_person` VALUES (1,'Marylou Hiom'),(2,'Richardo Bebbington'),(3,'Miriam Lipsett'),(4,'Louie Antognetti'),(5,'Kevan Gamlin'),(6,'Debera Adenot'),(7,'Luke Riggeard'),(8,'Gizela Treacy'),(9,'Almeta Canny'),(10,'Anabelle Shillitto'),(11,'Tamarah Redsull'),(12,'Anallese Ashenhurst'),(13,'Malory Ben-Aharon'),(14,'Jae Mower'),(15,'Laughton Dunthorn'),(16,'Murvyn Farge'),(17,'Ellene Littleproud'),(18,'Jean Wraxall'),(19,'Charyl Cuel'),(20,'Silvain Robottham'),(22,'Trong Huu'),(23,'');
/*!40000 ALTER TABLE `LogApp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogApp_tracking`
--

DROP TABLE IF EXISTS `LogApp_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogApp_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idPeople_id` bigint(20) NOT NULL,
  `idContact_id` bigint(20) NOT NULL,
  `idCam_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LogApp_tracking_idCam_id_ad7028fe_fk_LogApp_camera_id` (`idCam_id`),
  KEY `LogApp_tracking_idContact_id_07e88795_fk_LogApp_person_id` (`idContact_id`),
  KEY `LogApp_tracking_idPeople_id_e07a098b_fk_LogApp_person_id` (`idPeople_id`),
  CONSTRAINT `LogApp_tracking_idCam_id_ad7028fe_fk_LogApp_camera_id` FOREIGN KEY (`idCam_id`) REFERENCES `LogApp_camera` (`id`),
  CONSTRAINT `LogApp_tracking_idContact_id_07e88795_fk_LogApp_person_id` FOREIGN KEY (`idContact_id`) REFERENCES `LogApp_person` (`id`),
  CONSTRAINT `LogApp_tracking_idPeople_id_e07a098b_fk_LogApp_person_id` FOREIGN KEY (`idPeople_id`) REFERENCES `LogApp_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogApp_tracking`
--

LOCK TABLES `LogApp_tracking` WRITE;
/*!40000 ALTER TABLE `LogApp_tracking` DISABLE KEYS */;
INSERT INTO `LogApp_tracking` VALUES (1,5,3,5,'2021-09-03','19:31:42.000000'),(2,9,20,7,'2021-09-03','08:54:31.000000'),(3,1,5,7,'2021-09-03','21:49:48.000000'),(4,8,11,2,'2021-09-03','01:55:16.000000'),(5,5,9,2,'2021-09-03','04:39:19.000000'),(6,4,11,10,'2021-09-03','11:42:01.000000'),(7,9,7,9,'2021-09-03','22:09:07.000000'),(8,6,2,7,'2021-09-03','19:02:26.000000'),(9,10,18,8,'2021-09-03','08:47:12.000000'),(10,8,13,2,'2021-09-03','08:39:58.000000'),(11,7,15,7,'2021-09-03','22:58:38.000000'),(12,3,19,9,'2021-09-03','19:54:29.000000'),(13,4,4,3,'2021-09-03','23:03:50.000000'),(14,8,11,1,'2021-09-03','14:16:04.000000'),(15,5,12,3,'2021-09-03','17:40:35.000000'),(16,7,7,5,'2021-09-03','00:15:06.000000'),(17,6,20,8,'2021-09-03','03:38:27.000000'),(18,8,5,7,'2021-09-03','17:03:19.000000'),(19,9,1,7,'2021-09-03','02:18:48.000000'),(20,7,5,2,'2021-09-03','19:44:42.000000'),(21,8,6,2,'2021-09-03','00:15:07.000000'),(22,5,11,4,'2021-09-03','00:15:06.000000'),(23,4,6,7,'2021-09-03','02:33:35.000000'),(24,1,11,3,'2021-09-03','09:35:22.000000'),(25,7,11,5,'2021-09-03','20:22:54.000000'),(26,7,5,1,'2021-09-03','16:25:41.000000'),(27,7,2,4,'2021-09-03','23:00:47.000000'),(28,7,16,7,'2021-09-03','15:47:02.000000'),(29,9,2,3,'2021-09-03','21:53:02.000000'),(30,5,6,1,'2021-09-03','04:13:06.000000'),(31,5,3,5,'2021-09-03','19:31:42.000000'),(32,1,1,1,'2020-02-02','19:31:42.000000');
/*!40000 ALTER TABLE `LogApp_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add person',7,'add_person'),(26,'Can change person',7,'change_person'),(27,'Can delete person',7,'delete_person'),(28,'Can view person',7,'view_person'),(29,'Can add tracking',8,'add_tracking'),(30,'Can change tracking',8,'change_tracking'),(31,'Can delete tracking',8,'delete_tracking'),(32,'Can view tracking',8,'view_tracking'),(33,'Can add camera',9,'add_camera'),(34,'Can change camera',9,'change_camera'),(35,'Can delete camera',9,'delete_camera'),(36,'Can view camera',9,'view_camera');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$aIRxDE0XWnGLRilKZAqfWP$Xj+VpGPZ67KpKQkbCTPbXUBZoEFtcnhCrVSwKqa6oT0=','2021-09-02 07:12:45.363898',1,'huu','','','',1,1,'2021-09-02 03:01:45.264982');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'LogApp','camera'),(7,'LogApp','person'),(8,'LogApp','tracking'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-02 02:09:55.520026'),(2,'auth','0001_initial','2021-09-02 02:09:55.886070'),(3,'admin','0001_initial','2021-09-02 02:09:55.991470'),(4,'admin','0002_logentry_remove_auto_add','2021-09-02 02:09:56.021740'),(5,'admin','0003_logentry_add_action_flag_choices','2021-09-02 02:09:56.056018'),(6,'contenttypes','0002_remove_content_type_name','2021-09-02 02:09:56.163148'),(7,'auth','0002_alter_permission_name_max_length','2021-09-02 02:09:56.190185'),(8,'auth','0003_alter_user_email_max_length','2021-09-02 02:09:56.216941'),(9,'auth','0004_alter_user_username_opts','2021-09-02 02:09:56.256118'),(10,'auth','0005_alter_user_last_login_null','2021-09-02 02:09:56.298380'),(11,'auth','0006_require_contenttypes_0002','2021-09-02 02:09:56.308317'),(12,'auth','0007_alter_validators_add_error_messages','2021-09-02 02:09:56.343855'),(13,'auth','0008_alter_user_username_max_length','2021-09-02 02:09:56.376686'),(14,'auth','0009_alter_user_last_name_max_length','2021-09-02 02:09:56.408786'),(15,'auth','0010_alter_group_name_max_length','2021-09-02 02:09:56.440220'),(16,'auth','0011_update_proxy_permissions','2021-09-02 02:09:56.469535'),(17,'auth','0012_alter_user_first_name_max_length','2021-09-02 02:09:56.518264'),(18,'sessions','0001_initial','2021-09-02 02:09:56.558226'),(19,'LogApp','0001_initial','2021-09-02 02:47:10.568594'),(20,'LogApp','0002_auto_20210903_0053','2021-09-02 17:54:04.899603');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('20kn8d7n7wvxp63khxt44ubqjmm51bo0','.eJxVjDkOwjAUBe_iGlmOHeJvSvqcIfqbcQA5UpYKcXeIlALaNzPvZQbc1jJsi87DKOZiGnP63Qj5oXUHcsd6myxPdZ1HsrtiD7rYfhJ9Xg_376DgUr71OYOScEeta8k7BhAgaoAzS9boHbgcQvIYg4dOCQImST4qIjM5NO8PBqk47g:1mLgtx:lhwJbQy7BkX-Bp0bZSLMgyf2d-Qim-Ifwc3r5rCaVOc','2021-09-16 07:12:45.490778');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-05 19:06:31
