cask 'navicat-for-mariadb' do
  version '11.2.7'
  sha256 '29c0d1eb2a129fd7522ccf3d466b2cfd709a5f9166c093ffeedb4b5090874731'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
