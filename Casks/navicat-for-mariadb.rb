cask 'navicat-for-mariadb' do
  version '15.0.4'
  sha256 'f2e09bc10738d8926524324163da4327bc6c47a058194e4085e0f459ddcac3d6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
