cask 'navicat-for-sql-server' do
  version '11.2.16'
  sha256 'e3529ae3df288d3da70a3b8805ca8a2bbe805402b3ff38f54994a02173d9f092'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
