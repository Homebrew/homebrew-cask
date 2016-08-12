cask 'navicat-for-mariadb' do
  version '11.2.13'
  sha256 'd9cc7134fa2995d666008d92b147a3f0855582096089cdb1e713768553dbdda3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
