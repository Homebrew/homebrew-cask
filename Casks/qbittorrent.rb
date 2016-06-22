cask 'qbittorrent' do
  version '3.3.4'
  sha256 'c46311ad7f341d7c193f7fd8f82f775d50804274b24fd1f341b3ce2ca57ff2a0'

  # sourceforge.net/project/qbittorrent was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '8caf92e5653b35de2fc74953c235e7d47ac61a6ee20e6eef704fc41446143e3d'
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org/'
  license :gpl

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
