cask :v1 => 'navicat-for-mariadb' do
  version '11.1.15'
  sha256 '564b7ae8f50f6c541fa3f61fe7889ca1cd2a180025b40033d35d7837ec1cedd1'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
