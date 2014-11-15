cask :v1 => 'qbittorrent' do
  version '3.1.3'
  sha256 'eaa13313fd2f88b7cbc6dd9ad2c63871c2a58a8f0177349618bbc853e56783c7'

  url "https://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  homepage 'http://www.qbittorrent.org'
  license :oss

  app 'qBittorrent.app'
end
