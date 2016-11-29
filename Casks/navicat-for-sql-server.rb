cask 'navicat-for-sql-server' do
  version '11.2.15'
  sha256 'e1eead8ef6cf6014e49cfb0301ecdb37101c0a295d536ab1948fee204df41666'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
