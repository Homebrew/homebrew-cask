cask 'qbittorrent' do
  version '4.0.3'
  sha256 '38521093cca0a2eb4332422faf7b425318b60a004d1b2c972a803c44ead1cadd'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '85ac69fc348d4536277a79c5b632b8ddc3cec0329d73133aa6fa02af7b570cb1'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
