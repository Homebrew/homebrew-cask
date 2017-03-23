cask 'navicat-for-sql-server' do
  version '11.2.17'
  sha256 '84826b23b496dc809794c91ad77bce6deff9978c5ddb780999e9dd76ae776cc3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
