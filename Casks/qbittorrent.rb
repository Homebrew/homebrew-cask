cask 'qbittorrent' do
  version '4.1.8'
  sha256 '8f12487b2d6be51442778ae196ad3e73c6fe4474feb929b5d4b4e11443d9c108'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  depends_on macos: '>= :sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
