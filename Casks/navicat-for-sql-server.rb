cask 'navicat-for-sql-server' do
  version '12.1.16'
  sha256 '89487ea52092a3cae5e9d46f94a4d1e0998ef1250bae2c4ef9f8859684d871b7'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
