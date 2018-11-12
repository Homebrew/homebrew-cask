cask 'loopback' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/loopback/download/Loopback.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Loopback&system=10140'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/loopback/'

  app 'Loopback.app'
end
