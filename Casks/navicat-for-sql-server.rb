cask 'navicat-for-sql-server' do
  version '15.0.4'
  sha256 'ed462c247e0ef150335cce624956082a37067744e582960fcf07b5d6073758bc'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
