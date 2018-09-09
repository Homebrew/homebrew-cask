cask 'navicat-for-sql-server' do
  version '12.1.7'
  sha256 '5d178018a7e77a0c70473d09a659e2b4dbf997ff3a9afdf78beead2e1ff87c36'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
