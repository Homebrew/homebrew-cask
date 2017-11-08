cask 'navicat-for-mariadb' do
  version '12.0.15'
  sha256 'f4b8fdb44852f5075d56728ea05f5ec38c58b49d731c7b36d1e9f55d679cbd00'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note',
          checkpoint: 'f5792d55dd79153b79ed7cb0040be24f9dca1b00b1382a172c53faa17791aec3'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
