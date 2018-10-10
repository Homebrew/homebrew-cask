cask 'farrago' do
  version '1.2.1'
  sha256 '587f5c48b0f28f9134790df4b1af2f77752b32351caeb2f98d70a8cfe12eae2b'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
