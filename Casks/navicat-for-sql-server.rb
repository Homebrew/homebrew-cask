cask 'navicat-for-sql-server' do
  version '15.0.14'
  sha256 '3bcbe21610791e73773e3a968019b8415b8cf56f6ca3ae8ed943c50b69957ce6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
