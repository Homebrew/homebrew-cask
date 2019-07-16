cask 'farrago' do
  version '1.2.5'
  sha256 '9ef80c9861495a45516abf8d630a34a6e67b989a24028a0e23a35f485d5364c2'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
