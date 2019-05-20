cask 'navicat-for-sql-server' do
  version '12.1.20'
  sha256 '286f1c9e5121de3e2de389765c254fec4518f81bc91f6a7f7c5c324a124d51e8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
