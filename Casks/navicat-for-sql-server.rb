cask :v1 => 'navicat-for-sql-server' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'c051bb40b6c23bf3b60ce9b761f2bba779d64f839c03d7cc4060abbd43d5a10d'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
