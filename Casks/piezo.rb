cask 'piezo' do
  version '1.5.11'
  sha256 '5854f52282071ace571d3d1a8ec026923489979eaa01aede220c91bf53cedb9e'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
