cask 'qbittorrent' do
  version '3.3.4'
  sha256 'c46311ad7f341d7c193f7fd8f82f775d50804274b24fd1f341b3ce2ca57ff2a0'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
