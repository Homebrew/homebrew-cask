cask 'navicat-for-mariadb' do
  version '15.0.8'
  sha256 'f6daa277f5a6a3631c4aa0ce45d2416c8075a5e8445157101560545232ca822d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
