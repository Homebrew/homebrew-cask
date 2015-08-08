cask :v1 => 'navicat-for-sql-server' do
  version '11.1.14'   # navicat-premium.rb, navicat-premium-essentials.rb and navicat-for-* should be upgraded together
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
