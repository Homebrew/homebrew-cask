cask :v1 => 'qbittorrent' do
  version '3.2.3'
  sha256 'c88f1bd90c8e9b667dd5d8c35ccd490c56293ca86b9a203c15e083c7f18f4136'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
