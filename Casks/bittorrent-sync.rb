class BittorrentSync < Cask
  version '1.3.106'
  sha256 '31eca603936f5a854567bb75f9d22f7de368469be5f1c5e2637582a60a99c8d1'

  url 'http://download-lb.utorrent.com/endpoint/btsync/os/osx/track/stable'
  # todo: response was not XML
  # appcast 'http://www.usyncapp.com/cfu.php'
  homepage 'http://www.bittorrent.com/sync'

  link 'BitTorrent Sync.app'
end
