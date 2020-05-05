cask 'navicat-for-sql-server' do
  version '15.0.15'
  sha256 '3d61a5e507ce8f17f71b065f7a37eac5639b14b7f2b1d73810d7112028e370d6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
