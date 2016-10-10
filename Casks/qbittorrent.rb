cask 'qbittorrent' do
  version '3.3.6'
  sha256 'd12fadd8712e20749931c5fa18289e3ec6bca63d6da9aeb08c18a5bb857cd84e'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: 'e407968d0a0b068d9275170baa466025337ad85148f3639fa85ac5618c5c301f'
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
