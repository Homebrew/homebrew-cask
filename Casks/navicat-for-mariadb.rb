cask 'navicat-for-mariadb' do
  version '11.2.6'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
