cask 'navicat-for-sql-server' do
  version '15.0.18'
  sha256 'f37c99a3ef442651660b0460c935e2f71ede7a9e3d043cec0e8ff9f7909b91a1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQL%20Server&appLang=en'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
