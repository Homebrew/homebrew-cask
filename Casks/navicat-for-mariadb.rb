cask 'navicat-for-mariadb' do
  version '11.2.9'
  sha256 'fc0ecf779d094fb484a75a42cb746f88d01c82da353f1bab68b0d80dd72bf822'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
