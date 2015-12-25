cask 'navicat-for-sql-server' do
  version '11.2.5'
  sha256 '07d2beb9a4e512c3d1be95a6e66904994af286c7df2c86d3eadd2d40051b5893'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
