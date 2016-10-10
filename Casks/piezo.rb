cask 'piezo' do
  version '1.5.2'
  sha256 'fdd387448fef83bc27cee79c01d4d2e99605bee8df1cf0b3a18fec12c4115554'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114',
          checkpoint: 'a7becbbd9f1a9ba7d5a8579a0e53ecc838461ff40f918e111734c05a7b12d642'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
