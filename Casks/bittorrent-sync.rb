cask 'bittorrent-sync' do
  version :latest
  sha256 :no_check

  url 'https://download-cdn.getsync.com/stable/osx/BitTorrent-Sync.dmg'
  name 'BitTorrent Sync'
  homepage 'https://www.getsync.com/'
  license :gratis

  app 'BitTorrent Sync.app'
end
