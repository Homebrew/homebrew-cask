cask 'qbittorrent' do
  version '4.0.4'
  sha256 '848f6362309a2538197bcd0b3a593c43cbce286c331be244ec29b924b81aaabe'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '057ab0a219434df2054234dfeb18bddf1877cefd886ef21850d873996dd64f15'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
