cask :v1 => 'navicat-for-mariadb' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '4f1fab7365751f50aab80e26e7638d4b19d4653dd7bccb0d8ae64c0d48222059'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
