cask 'farrago' do
  version '1.2.6'
  sha256 'a1ee4f390f087ea18a7e6547e655ca40af2f18b093560807e64583a106f87636'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
