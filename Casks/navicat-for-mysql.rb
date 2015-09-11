cask :v1 => 'navicat-for-mysql' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'c58e2f7ed397fc6bb6c2ea6d3a36e3dbaec7aae7f5cbdd91560a4ebb325a0d05'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
