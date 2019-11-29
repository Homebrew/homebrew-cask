cask 'navicat-for-sql-server' do
  version '15.0.3'
  sha256 '69aebf183f97010ba1eff6e8564d6871951595f81c958adf3f2e1fc37db638c2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
