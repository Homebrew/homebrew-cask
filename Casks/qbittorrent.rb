cask 'qbittorrent' do
  version '4.1.0'
  sha256 '42be88cbce67eeb80244560bedbcc8af49586e1837bf69796b09d2acccae11bf'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: 'c68e74800e9677e9614fe4beaa258e35b3638d03ab7f76326a61e7bdb3ba9475'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
