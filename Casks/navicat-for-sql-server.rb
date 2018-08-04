cask 'navicat-for-sql-server' do
  version '12.1.4'
  sha256 'd87639bdb6717f2ef092123eeb3dc273a45e619091656c75c7238aa97ebd1a6c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
