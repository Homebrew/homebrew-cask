cask 'navicat-for-sql-server' do
  version '12.0.5'
  sha256 '26816ff695560ffc956b8d52a86aede849faf2908943f87a219faa00451988b6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note',
          checkpoint: '4da3d123de6cd8095bf554722e23020c9b8c6ea8742df8fe661cf49dea9dbc98'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
