cask 'piezo' do
  version '1.6.5'
  sha256 '1ce1418673799e37c8c00ad9d48e8507ad692a1df4041ccad7c90521e7205683'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  depends_on macos: '>= :sierra'

  app 'Piezo.app'
end
