cask 'navicat-for-sql-server' do
  version '12.0.28'
  sha256 '610607ccbe22d6bb4f3c578ef30c9e26f097a1f6d962f7f784226b77a6845bc0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
