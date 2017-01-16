cask 'qbittorrent' do
  version '3.3.10'
  sha256 '2ceece42dbb7e84a88496028c09e34edac5be8d9583d0475d494883b97a11a5f'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '80ba15210f3eb226e6f01848dd69298df7f42e7ee7dd849dfc2a2dc576dbb3e1'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
