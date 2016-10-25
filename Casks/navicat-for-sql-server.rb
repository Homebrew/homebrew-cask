cask 'navicat-for-sql-server' do
  version '11.2.15'
  sha256 '45a967a43ba4f95a17a80d8fff2579bc17c81e17bb992db4055f7009b9575e6b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
