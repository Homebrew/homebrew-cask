cask :v1 => 'opensong' do
  version '2.1.1'
  sha256 '7663e04a1ae46aec948fad9e80cd8966c5a006744b9da42bc85cca4bb4dda4bc'

  url "https://downloads.sourceforge.net/sourceforge/opensong/OpenSongOSX-V#{version}.dmg"
  homepage 'http://www.opensong.org/'
  license :oss

  app "OpenSong V#{version}/OpenSongOSX-Cocoa.app"
  app "Opensong V#{version}/OpenSongOSX.app"
end
