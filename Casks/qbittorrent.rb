cask 'qbittorrent' do
  version '3.3.14'
  sha256 '6164d99fb61820f34c5d19132ee663107b0cc767a858da63794cf6a018212204'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '3ed2b9372910bf8f27d20bf30ac07457b61c87fdcd4335bfff14fa7ef05c887b'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
