cask 'qbittorrent' do
  version '3.3.15'
  sha256 '10b9f6afc250de301ef95f65107539296d8ebb93df776245bec2f57b5598f85e'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: 'd188cd20ca406a4f1085eb79e2a4b148204764d9043894bea841f1089104457f'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
