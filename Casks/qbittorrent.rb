cask 'qbittorrent' do
  version '3.3.12'
  sha256 '85296a52d45d5ed814e3a66c7c687d95b192d80bfaa9821ac4a97be7e2f791cf'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '23d7672f0e057c154f7e398e579834f05152e8fe9eef4171b6464ac9f56ff453'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
