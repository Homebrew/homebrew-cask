cask 'navicat-for-mariadb' do
  version '15.0.18'
  sha256 '34681fffd5392d615fe6334b2d59c92c6d2b18139914ef72b90ec8f9c5e00192'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
