cask 'qbittorrent' do
  version '3.3.13'
  sha256 'fb4775415b75cbebd5a4b61cb210338f5a8fb19fff7c53436a23882bfe235b44'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: 'be07b96c4c52baec4134b37c1b31e8a6d13e1f8dcd67bcfec28928e779366fbb'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
