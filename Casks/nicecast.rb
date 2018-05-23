cask 'nicecast' do
  version '1.11.13'
  sha256 '99ea875e2e4c8bfd7a976150140f25c85e006fdad2dc7124f7ae61fcba940537'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: 'f46489742f12e8fdfaab7f518276cddf7c22916a389dd554196922d89f5ed89b'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast/'

  app 'Nicecast.app'
end
