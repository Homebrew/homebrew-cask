cask 'navicat-for-mariadb' do
  version '12.1.7'
  sha256 '357a595272eff7903b228ecb8bfa45bab9b06f5dcd9b0be30f76cae939158e74'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
