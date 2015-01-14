cask :v1 => 'navicat-for-mariadb' do
  version '11.1.7'
  sha256 'd2e06c607711001b8bf65971fbf7efa3bc3347ffea4a1180504a666fa9b114e5'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
