cask :v1 => 'navicat-for-mysql' do
  version '11.1.10'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 '5e7ae59235e67547c2deacc2fa1b45dc4bfa4fef5f25ac4fff901df3bfaa9821'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
