cask 'navicat-for-mariadb' do
  version '12.1.16'
  sha256 'bc8774c5c1c559f603b4a81c6c60c7d2c32b47eb008f41e07a76112526bfd4da'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
