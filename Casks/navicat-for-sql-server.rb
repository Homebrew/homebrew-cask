cask 'navicat-for-sql-server' do
  version '15.0.11'
  sha256 '4117d5107ddf47ebae1814aeceb7cf323281261d310e136bae237c1ff0eeee3d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
