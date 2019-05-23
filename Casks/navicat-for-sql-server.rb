cask 'navicat-for-sql-server' do
  version '12.1.22'
  sha256 'f1bd1ba4961b0bd1b5661931a64c3b689bfac0c572705364303807afe81b6ed2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
