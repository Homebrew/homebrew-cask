cask 'farrago' do
  version '1.2.0'
  sha256 '67fd873285aa2b698d159d419a567504676984ab6d7de64dcc7e91461cbf8ac7'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
