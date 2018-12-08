cask 'loopback' do
  version '1.2.1'
  sha256 '8be69661a740a4966ad7048b5ab68a1322ae8a373b4a15f23d1fc02ed44e32b5'

  url 'https://rogueamoeba.com/legacy/downloads/Loopback-121.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Loopback&system=10140'
  name 'Loopback'
  homepage 'https://rogueamoeba.com/legacy/'

  app 'Loopback.app'
end
