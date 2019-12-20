cask 'navicat-for-mariadb' do
  version '15.0.5'
  sha256 '99c780b70f088b97e8d9c3f6e3a7fa0519461ba53a73a4237988f3ac20298825'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
