cask 'navicat-for-sql-server' do
  version '12.0.26'
  sha256 '3ae0f46eb7166a1ccdc9efb19cd19d34001eaadba5a2dc9ed45195011f2e2df8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlserver_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20SQL%20Server",
          checkpoint: 'b839fde860c9b7563f625167480c9a8d0f265c73de8959c7043e5ba8aee556ba'
  name 'Navicat for SQL Server'
  homepage 'https://www.navicat.com/products/navicat-for-sqlserver'

  app 'Navicat For SQL Server.app'
end
