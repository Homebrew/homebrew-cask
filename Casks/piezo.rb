cask 'piezo' do
  version '1.6.4'
  sha256 'ec74e0b5de4ccf45b19f50932bfe873756980f798674be0ddec99718778a8d5e'

  url 'https://rogueamoeba.com/piezo/download/Piezo.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Piezo&system=10146'
  name 'Piezo'
  homepage 'https://rogueamoeba.com/piezo/'

  depends_on macos: '>= :sierra'

  app 'Piezo.app'
end
