cask 'navicat-for-sql-server' do
  version '15.0.10'
  sha256 '001d5f1ef5981a4d084330c7f0454cfb6d6b6fc6aec707c0fc844937ff439650'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
