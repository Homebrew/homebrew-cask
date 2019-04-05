cask 'navicat-for-mariadb' do
  version '12.1.18'
  sha256 'a252c67a1c0813c45d69bcd24fab09e45cb86cb46d8bc6fee08048de5689250a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
