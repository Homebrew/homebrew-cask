class BittorrentSync < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download-lb.utorrent.com/endpoint/btsync/os/osx/track/stable'
  # todo: response was not XML
  # appcast 'http://www.usyncapp.com/cfu.php'
  homepage 'http://www.bittorrent.com/sync'

  link 'BitTorrent Sync.app'
end
