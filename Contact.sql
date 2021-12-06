USE [master]
GO
/****** Object:  Database [Contact]    Script Date: 06/12/2021 09:54:13 PM ******/
CREATE DATABASE [Contact]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Contact', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Contact.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Contact_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Contact_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Contact] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Contact].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Contact] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Contact] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Contact] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Contact] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Contact] SET ARITHABORT OFF 
GO
ALTER DATABASE [Contact] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Contact] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Contact] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Contact] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Contact] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Contact] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Contact] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Contact] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Contact] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Contact] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Contact] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Contact] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Contact] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Contact] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Contact] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Contact] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Contact] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Contact] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Contact] SET  MULTI_USER 
GO
ALTER DATABASE [Contact] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Contact] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Contact] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Contact] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Contact] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Contact] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Contact] SET QUERY_STORE = OFF
GO
USE [Contact]
GO
/****** Object:  Table [dbo].[tbl_contact]    Script Date: 06/12/2021 09:54:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_contact] ON 

INSERT [dbo].[tbl_contact] ([ContactID], [FirstName], [LastName], [ContactNo]) VALUES (1, N'eman', N'essam', N'01067711691')
INSERT [dbo].[tbl_contact] ([ContactID], [FirstName], [LastName], [ContactNo]) VALUES (5, N' haitham', N'ahmed', N' 0105215655')
INSERT [dbo].[tbl_contact] ([ContactID], [FirstName], [LastName], [ContactNo]) VALUES (1002, N' mohamed', N'salah', N' 0152355225')
INSERT [dbo].[tbl_contact] ([ContactID], [FirstName], [LastName], [ContactNo]) VALUES (1003, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_contact] OFF
GO
USE [master]
GO
ALTER DATABASE [Contact] SET  READ_WRITE 
GO
