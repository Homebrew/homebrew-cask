cask 'qbittorrent' do
  version '4.2.4'
  sha256 '384fe7d1c7bd35747829f39a0a679378a6f1ec89bc1a3e27e1809c12b69ee73a'

  # sourceforge.net/qbittorrent/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  depends_on macos: '>= :high_sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
