cask 'piezo' do
  version '1.6.0'
  sha256 '848f1e3c22675843ae61ec51bfd380497e6988452edd80db61a9eae402441afb'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
