cask 'farrago' do
  version '1.2.3'
  sha256 '7d929251eb1cf83445bad19424a325687223f797d6e6fb73c13b5bf22a8bcf23'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
