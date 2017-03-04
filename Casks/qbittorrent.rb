cask 'qbittorrent' do
  version '3.3.11'
  sha256 'dda519484075ce455f91962d04ca57535c50604b30e886e5025ab97a4e5be1df'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: '4bb8d28cf2ce7344b38fc0a40e82b74f94037cd30ac28893353da0a4f7babcea'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
