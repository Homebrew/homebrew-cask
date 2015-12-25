cask 'navicat-for-mariadb' do
  version '11.2.5'
  sha256 'e4840081a03321b866e9987a2c6e3d1688f4cc83df9b27947024a8575e3d6c26'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
