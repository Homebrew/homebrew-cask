cask :v1 => 'navicat-for-mariadb' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'a422c6a044e0f169a573fbfcfe85173bc422c2831e7626092527efb8f6eb1737'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
