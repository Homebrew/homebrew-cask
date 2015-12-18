cask 'navicat-for-sql-server' do
  version '11.1.17'
  sha256 '6fd42eeebb1b020bc583ca369e9e79b15d266b37eb3dfdad470545d4ba7cb303'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
