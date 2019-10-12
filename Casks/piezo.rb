cask 'piezo' do
  version '1.6.2'
  sha256 'd27f3baa4200576f7405f3832bbdfffbba58b38c25a0288a675bf6a221d6e079'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  depends_on macos: '>= :sierra'

  app 'Piezo.app'
end
