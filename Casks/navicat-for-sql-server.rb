cask 'navicat-for-sql-server' do
  version '12.1.5'
  sha256 '61448492d40295aaf73c1b7913f7a62d93d88b8edff7fb80cc8a1b06ea1a7411'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
