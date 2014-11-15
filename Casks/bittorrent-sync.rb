cask :v1 => 'bittorrent-sync' do
  version :latest
  sha256 :no_check

  url 'http://download-new.utorrent.com/endpoint/btsync/os/osx/track/stable'
  # todo: response was not XML
  # appcast 'http://www.usyncapp.com/cfu.php'
  homepage 'http://www.bittorrent.com/sync'
  license :gratis

  app 'BitTorrent Sync.app'
end
