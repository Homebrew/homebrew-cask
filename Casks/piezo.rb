cask 'piezo' do
  version '1.5.12'
  sha256 'a17a0ac554cc0dfaa19a0dc981532968597bd25b4e99262d1b6ff7c9e687d039'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10114'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  app 'Piezo.app'
end
