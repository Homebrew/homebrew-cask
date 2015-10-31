cask :v1 => 'qbittorrent' do
  version '3.2.4'
  sha256 '675ec9cb24bad59bfce9f5619becbe753c23bc2c356505261a0c2223b42a6c55'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
