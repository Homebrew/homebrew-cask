cask 'qbittorrent' do
  version '3.3.9'
  sha256 'e41aceeb2afde69cf97aaefb2dc2a40a75c85f7fbb87960ff07997a53eca706a'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '136344e8dcb6fe394c3a0f00e58c0335043a6312e5ce776ad01455b27c45a290'
  name 'qBittorrent'
  homepage 'http://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
