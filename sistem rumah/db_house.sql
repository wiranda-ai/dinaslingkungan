-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 05:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_house`
--

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id` int(11) NOT NULL,
  `tipe_bangunan` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `tipe_bangunan`, `tarif`, `alamat`, `keterangan`) VALUES
(1, 'Rumah Mewah', 20000, 'mutiara', 'per bulan'),
(5, 'rumah sangat sederhana', 10000, 'cokro', 'per bulan'),
(6, 'Rumah Sangat Sederhana', 10000, 'Sisimangaraja', 'Per bulan');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `idlab` int(11) NOT NULL,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `tipe_lokasi` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`idlab`, `nama_lokasi`, `tipe_lokasi`, `latitude`, `longitude`, `alamat`) VALUES
(3, 'Gakkum KLM KPLH', 'OUTLET IPAL', '04°28\'25,72\"', '096°52\'34,28\"', 'PT JAYA MEDIA INTERNUSA , Jl. Kampung Kutai Ban, Desa Kute Baru, Kec. Linge Kab.Aceh Tengah Prov. Aceh'),
(5, 'Gakkum KLM KPLH', 'SUMUR PANTAU HULU', '04°28\'28,27\"', '096°52\'33,25\"', 'PT JAYA MEDIA INTERNUSA , Jl. Kampung Kutai Ban, Desa Kute Baru, Kec. Linge Kab.Aceh Tengah Prov. Aceh'),
(9, 'Gakkum KLM / GPLM', 'BAK PENAMPUNG PENYIRAMAN TANGKI TERPENTIN', '04°28\'26,18\"', '096°52\'33,07\"', 'PT JAYA MEDIA INTERNUSA , Jl. Kampung Kutai Ban, Desa Kute Baru, Kec. Linge Kab.Aceh Tengah Prov. Aceh'),
(10, 'Gakkum KLM / GPLM', 'SUMUR PANTAU HILIR', '04°28\'21,57\"', '096°52\'33,92', 'PT JAYA MEDIA INTERNUSA , Jl. Kampung Kutai Ban, Desa Kute Baru, Kec. Linge Kab.Aceh Tengah Prov. Aceh'),
(12, 'NOPABOY ALIAICQIS', 'SUNGAI SEI PIASA (HULU)', '02°52\'27.98\"', '099°33\'33,48\"', 'DESA TARUSAN TENGAH, KEC. TINGGI RAJA, KAB. ASAHAN, PROV. SUMATERA UTARA'),
(13, 'NOPABOY ALIAICQIS', 'SUNGAI SEI PIASA (HILIR)', '02°52\'39.23\"', '099°33\'34,15\"', 'DESA TARUSAN TENGAH, KEC. TINGGI RAJA, KAB. ASAHAN, PROV. SUMATERA UTARA'),
(14, 'CV. MITRA JAYA RUBBER', 'INLET', '2°54\'47.75\"', '99°34\'26.08\"', 'DUSUN 3 DESA PENGAJIAN, KEC. TINGGI RAJA KAB. ASAHAN'),
(15, 'CV. MITRA JAYA RUBBER', 'OUTLET', '2°54\'47.46\"', '99°34\'25.05\"', 'DUSUN 3 DESA PENGAJIAN, KEC. TINGGI RAJA KAB. ASAHAN'),
(16, 'PT. MEILIALA MEDIKA GROUP ', 'AIR BERSIH', '02°39\'14.37\"', '099°37\'51.23\"', 'KECAMATAN AEK LOBA'),
(17, 'PT SAWIT ASAHAN TETAP UTUH', 'Inlet IPAL', '02°32\'17.98\"', '096.62\'34,28\"', 'Pulau Maria');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`, `akses`) VALUES
(1, 'lingkunganhidup@gmail.com', '12345678', 'admin'),
(2, 'uptlabasahan@gmail.com', 'laboratorium13', 'lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`idlab`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `idlab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
