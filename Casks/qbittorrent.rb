cask :v1 => 'qbittorrent' do
  version '3.2.5'
  sha256 '24cd6d4c4b31a48c15db2c3dad24f0ad001281ca6ca2dfbecc24670ba429a6af'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
