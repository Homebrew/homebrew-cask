cask 'qbittorrent' do
  version '3.3.3'
  sha256 'e2d541260c20acb66c59aa3eea85c9cd5cb5e511c3cb8d731902dcb6745b8899'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
