cask 'piezo' do
  version '1.6.1'
  sha256 '36a264ae1b68cf2c73bcaff1fd1f7af52cafc31210ac8a03029faa17e5394db5'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  depends_on macos: '>= :sierra'

  app 'Piezo.app'
end
