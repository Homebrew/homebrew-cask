cask :v1 => 'navicat-for-sql-server' do
  version '11.1.15'
  sha256 'fc85b72dcab03dc9597192d29bdc79e02916b80b7e61ffb425676862d9e54c62'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat For SQL Server.app'
end
