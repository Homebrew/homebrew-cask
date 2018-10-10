cask 'piezo' do
  version '1.5.10'
  sha256 '5b812b49da60705e13fa710c0ea901599f46c263db99f2292944b511ab71df69'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.com/piezo/releasenotes.php'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
