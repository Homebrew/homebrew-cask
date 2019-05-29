cask 'qbittorrent' do
  version '4.1.6'
  sha256 '0ca2cb96beb3d427bd236a78fdee7f2cafe694300dea2f6c37052d758e95b2e4'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
