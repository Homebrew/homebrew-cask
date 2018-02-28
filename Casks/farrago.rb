cask 'farrago' do
  version '1.0.2'
  sha256 '96bfd671aed96583a9cd11020fa5575f3b148492da690978ff7b04ba48892a11'

  url 'https://rogueamoeba.com/farrago/download/Farrago.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Farrago',
          checkpoint: '0ab82edd3438ab53f8171ae3f58bcb42a5f99b07e800db8d6ea873d581ef17ff'
  name 'Farrago'
  homepage 'https://rogueamoeba.com/farrago/'

  app 'Farrago.app'
end
