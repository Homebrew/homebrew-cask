cask :v1 => 'bittorrent-sync' do
  version :latest
  sha256 :no_check

  # getsyncapp.com is the official download host per the vendor homepage
  url 'https://download-cdn.getsyncapp.com/stable/osx/BitTorrent-Sync.dmg'
  name 'BitTorrent Sync'
  # todo: response was not XML
  # appcast 'http://www.usyncapp.com/cfu.php'
  homepage 'https://www.getsync.com/'
  license :gratis

  app 'BitTorrent Sync.app'
end
