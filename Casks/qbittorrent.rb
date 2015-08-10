cask :v1 => 'qbittorrent' do
  version '3.2.2'
  sha256 'c51a86582212720656ce9e89bc1f803aef555a33a13686c2e8fe3962baf7d9e4'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/qbittorrent/qbittorrent-#{version}.dmg"
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org'
  license :gpl

  app 'qBittorrent.app'
end
