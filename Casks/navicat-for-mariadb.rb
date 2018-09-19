cask 'navicat-for-mariadb' do
  version '12.1.8'
  sha256 '339da2e0da540c5d4ecf629408ea076ed072ea3f192e3c9a177c6d7bc98446c2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
