cask 'navicat-for-sql-server' do
  version '15.0.8'
  sha256 '1db27fcfa449483fa5ecad2f2b4d1303277b44dcdfc703a4e9828d9169d024c2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
