cask 'opensong' do
  version '2.1.2'
  sha256 '5ed3da5801c2539b87c3ce8125a1b440a6d50129b675182685892e1c46d0ad1b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/opensong/OpenSongOSX-V#{version}.dmg"
  name 'OpenSong'
  homepage 'http://www.opensong.org/'
  license :gpl

  app "OpenSong V#{version}/OpenSongOSX-Cocoa.app"
  app "Opensong V#{version}/OpenSongOSX.app"
end
