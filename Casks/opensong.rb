cask 'opensong' do
  version '2.1.2'
  sha256 '5ed3da5801c2539b87c3ce8125a1b440a6d50129b675182685892e1c46d0ad1b'

  # sourceforge.net/opensong was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opensong/OpenSongOSX-V#{version}.dmg"
  appcast 'https://sourceforge.net/projects/opensong/rss'
  name 'OpenSong'
  homepage 'http://www.opensong.org/'

  app "OpenSong V#{version}/OpenSongOSX-Cocoa.app"
  app "Opensong V#{version}/OpenSongOSX.app"
end
