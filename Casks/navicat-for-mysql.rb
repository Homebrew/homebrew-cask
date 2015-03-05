cask :v1 => 'navicat-for-mysql' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'dcb8e15b134bda9b7c416fac54bd4e1d233cf31f8f6f9443a530dffc0adf732e'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
