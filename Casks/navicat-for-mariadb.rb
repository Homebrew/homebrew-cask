cask 'navicat-for-mariadb' do
  version '15.0.7'
  sha256 '13e7a2266f49b9dc966caf4fc20ac11932c91c36f9832cb719a12ea3e883a9e2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
