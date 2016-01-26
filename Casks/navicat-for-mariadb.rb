cask 'navicat-for-mariadb' do
  version '11.2.6'
  sha256 'ff3b948e5b6b899313c98ee3f48e82f3ee9098545418ddd1da37a10463fb6000'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
