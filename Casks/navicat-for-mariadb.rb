cask 'navicat-for-mariadb' do
  version '12.0.2'
  sha256 'bae188ec3bbe8171800cd9b873198aea5c0498e64697f71bdb1bdb63295254d2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note',
          checkpoint: 'f1b71ca2b54f36aaf347234e551bd2b1c2c54ceb782ad3cc240cbd5ea1247c1d'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
