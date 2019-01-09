cask 'farrago' do
  version '1.2.2'
  sha256 'dd9c5c7b0e9090e404eb4fc901b7d3285636d8da9eed0d4facdfc37eb1fdb82b'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
