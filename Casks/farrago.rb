cask 'farrago' do
  version '1.1.0'
  sha256 'bd836293bf59cd137f2a8f0155794c7bc8010b451688237ae11206938815522b'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago',
          checkpoint: '17ab610fa29e7df86d3f44d4dc9c3462d41486221a88d5c4b19453bc541efa9c'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
