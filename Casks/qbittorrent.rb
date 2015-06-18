cask :v1 => 'qbittorrent' do
  version '3.2.0'
  sha256 'fbccaf3dca950c1284e99a9f85c6c4618266c1ea7f66d5aa392fc8c4907d2764'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
