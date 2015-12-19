cask 'navicat-for-mariadb' do
  version '11.1.17'
  sha256 '80921f110a2e1a0735c371cb3e943eb21c270b854907378580a6325254a1d0ea'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
