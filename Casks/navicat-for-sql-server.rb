cask 'navicat-for-sql-server' do
  version '12.0.27'
  sha256 '0f12cd141c16f4b86dd81cfc9ad574816acf69fdc4753ffeaae71b3522ff56d2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server",
          checkpoint: '65d21b4919e829d6d959a428a2d5434855d3554b58e7d8a928932ef39fb1eddb'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
