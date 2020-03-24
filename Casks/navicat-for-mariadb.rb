cask 'navicat-for-mariadb' do
  version '15.0.12'
  sha256 '94d4320bf67ea16eba17cba400c1280376b627a2a88f19cbf5e9914860fba79a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
