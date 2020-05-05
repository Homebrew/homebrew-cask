cask 'navicat-for-mariadb' do
  version '15.0.15'
  sha256 '914006594c4f94553ca050a8c814bb37e5b485ffbe18eefd21acf513826348af'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
