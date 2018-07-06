cask 'farrago' do
  version '1.1.0'
  sha256 'bd836293bf59cd137f2a8f0155794c7bc8010b451688237ae11206938815522b'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
