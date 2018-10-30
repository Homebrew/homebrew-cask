cask 'nicecast' do
  version '1.11.13'
  sha256 '99ea875e2e4c8bfd7a976150140f25c85e006fdad2dc7124f7ae61fcba940537'

  url "https://rogueamoeba.com/legacy/downloads/Nicecast-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast/'

  app 'Nicecast.app'
end
