cask 'navicat-for-sql-server' do
  version '12.1.3'
  sha256 'a81f4fce4b371bf9c75aa1b023fdea7584e33918889e8ce9666b06df98e7ba7c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlserver-release-note'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
