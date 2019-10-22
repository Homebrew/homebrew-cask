cask 'navicat-for-mariadb' do
  version '12.1.27'
  sha256 '5c466e9142c19796e3f9c710c1bb9f13ce61162ebad006a5c975dd13ef42bdb6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
