cask :v1 => 'navicat-for-mysql' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '790c6cf5704f9a6076d26e1eee789c1bf77926fb9580ff5587c34a913164c922'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
