cask 'navicat-for-sql-server' do
  version '12.1.25'
  sha256 '17eef9fb9b95476bbb9ed7ff8acdf25cebf0514a656fbf65b8db1bdcba587db5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
