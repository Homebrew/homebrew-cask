cask 'navicat-for-mariadb' do
  version '11.2.16'
  sha256 '081711142e7cc432353b97626f97ab44f88d3cd99b2bd9eb9fd74e95fb4e209b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
