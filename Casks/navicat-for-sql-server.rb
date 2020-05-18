cask 'navicat-for-sql-server' do
  version '15.0.16'
  sha256 '5fb8bcfbf2a7034d1c3735648ecf008703e425d3d7f8b8aa81baffb09d6a91fa'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
