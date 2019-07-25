cask 'navicat-for-sql-server' do
  version '12.1.24'
  sha256 '5a254b14332ac11c05adcf6357cf25f4287db66a13ad6e6aff56de572a9e5480'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
