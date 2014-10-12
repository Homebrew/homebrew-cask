class Deluge < Cask
  version '1.3.9'
  sha256 '24d798045b9f1ab332d92dae846a83cca1cdcc4ad7035fdfdd3b4d1b52cdf64b'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-osx-x86.tbz2"
  homepage 'http://deluge-torrent.org/'
  license :gpl

  app 'Deluge.app'
end
