cask 'navicat-for-sql-server' do
  version '11.2.6'
  sha256 '62367f5d08f802725216542f6d2482a5635cbefe7c2ca843059525d7077445d0'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
