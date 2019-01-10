cask 'navicat-for-mariadb' do
  version '12.1.15'
  sha256 'd04449ceac0c115e840645d7dc102c6b37f3c55e96ccd37dc81eed5299fbea6b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
