cask 'navicat-for-mariadb' do
  version '15.0.14'
  sha256 'd7d5c0f4aeb34bb840de45818c935416f98135ff4810d9eebf74428928b3391c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
