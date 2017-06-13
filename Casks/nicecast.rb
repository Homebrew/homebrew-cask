cask 'nicecast' do
  version '1.11.11'
  sha256 'b0af3d1d6b6dbbf055af2155a39d222afb6a6eed6eda040148e493b3e6acab3b'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: 'e13e37ea05462fea6aa278ee8352ffe0ce9a6aaa7c03072b406c773dffebb8b0'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast/'

  app 'Nicecast.app'
end
