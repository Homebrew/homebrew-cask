cask 'qbittorrent' do
  version '3.3.16'
  sha256 'a936369ed8ecfee7f7d87132288b454a15b203b2eaa26c487dc41e86fa0b28b2'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '5d6edd54ca3c18c49af71dbae522c553af914a27a8180a5e3fe7720bc92bb225'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
