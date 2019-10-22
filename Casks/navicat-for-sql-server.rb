cask 'navicat-for-sql-server' do
  version '12.1.27'
  sha256 'ad85600d2eda1ee0d8cb4b12ad2a9acaded98dcfe4125688400d28651f6deea3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
