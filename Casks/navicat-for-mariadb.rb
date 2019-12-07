cask 'navicat-for-mariadb' do
  version '15.0.3'
  sha256 '1a940eb1e6d2d0620f7e1007dea3a5e00004fa0135d4a149bc978dd8332cfd59'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
