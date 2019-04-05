cask 'navicat-for-sql-server' do
  version '12.1.18'
  sha256 '0760b3178ba65e9d3ea84b6ebdab83ff30ed028cadd3cf5cc86c452eb5f5d687'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
