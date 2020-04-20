cask 'qbittorrent' do
  version '4.2.3'
  sha256 '422ecaaedf610eb359ea1042ea57d0fb92d87754f66b432b3f2b17d1d21607c2'

  # sourceforge.net/qbittorrent/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  depends_on macos: '>= :high_sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
