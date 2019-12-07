cask 'piezo' do
  version '1.6.3'
  sha256 '925c6e8b14b3c499015441d09b102e0442d4a08654458633f907a50d5b51df99'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  depends_on macos: '>= :sierra'

  app 'Piezo.app'
end
