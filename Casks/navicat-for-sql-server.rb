cask 'navicat-for-sql-server' do
  version '12.1.8'
  sha256 '2bc4940e24e9082a8bf213eeb1cc5256261ab61701dc7e8f19f716438fc3dbe1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
