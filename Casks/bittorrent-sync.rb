class BittorrentSync < Cask
  url 'http://download-lb.utorrent.com/endpoint/btsync/os/osx/track/stable'
  # todo: response was not XML
  # appcast 'http://www.usyncapp.com/cfu.php'
  homepage 'http://www.bittorrent.com/sync'
  version 'latest'
  sha256 :no_check
  link 'BitTorrent Sync.app'
end
