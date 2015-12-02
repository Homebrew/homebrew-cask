cask :v1 => 'qbittorrent' do
  version '3.3.0'
  sha256 'fc4b23c48ccb3bff9595c2e5c90709c4fec419a0f0e4ea3a568d1f39664a0767'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
