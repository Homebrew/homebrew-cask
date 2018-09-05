cask 'navicat-for-sql-server' do
  version '12.1.6'
  sha256 '371ff41c13ffa39b8d1562e62d9714e217f333786d7a3f03fdb5234aa1a6473a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
