cask :v1 => 'navicat-for-mariadb' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'e2b528113ca6eb180220de72f59ec4323c6f1fabf865995497f179d1f8784eef'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MariaDB.app'
end
