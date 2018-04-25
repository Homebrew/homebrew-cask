cask 'navicat-for-sql-server' do
  version '12.0.24'
  sha256 'b8e09d96327e3106253bb6b17b7f066810b7933f586e4a3f33a5cfdb7012cc51'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlserver-release-note',
          checkpoint: '00c7d2bca50b01b9e8d9e369a432bda73465be8ac57376fffb317c37b9b3c3fd'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
