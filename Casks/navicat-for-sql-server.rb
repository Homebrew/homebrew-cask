cask 'navicat-for-sql-server' do
  version '12.1.9'
  sha256 '41512d07ac65f78b1630822d578fb641c413cd54afd9bf2a122bf62e4f3963ba'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
