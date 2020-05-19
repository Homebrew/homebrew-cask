cask 'navicat-for-mariadb' do
  version '15.0.16'
  sha256 '1cc640ed441c0daec57153625c9dfd67b3959ba96040f46aa982f0a050bd1142'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
