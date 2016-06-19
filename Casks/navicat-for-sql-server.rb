cask 'navicat-for-sql-server' do
  version '11.2.11'
  sha256 '5eaeab924632fc67561dec35f8a4f8cd80fe183c531d71ac7ca5e4313f2ebb58'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'http://www.navicat.com/products/navicat-for-sqlserver'
  license :commercial

  app 'Navicat For SQL Server.app'
end
