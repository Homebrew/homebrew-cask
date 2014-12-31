cask :v1 => 'deluge' do
  version '1.3.11'
  sha256 '503b3ac13bd437bfa2c055aa1ddf26290db0c5d4fb04e130c94dc42490ce6131'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-osx-x86.tbz2"
  homepage 'http://deluge-torrent.org/'
  license :gpl

  app 'Deluge.app'
end
