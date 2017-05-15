cask 'piezo' do
  version '1.5.2'
  sha256 'fdd387448fef83bc27cee79c01d4d2e99605bee8df1cf0b3a18fec12c4115554'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: 'f40dd24bc2ab3e76c10a88b777d24f807805071f2f823c9af48f40f1a5d5a075'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
