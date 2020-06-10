cask 'qbittorrent' do
  version '4.2.5'
  sha256 '52f86aa8f0e3f5c15013d40ff7789861dc6afdce077dfa461ccff2a56ff0d8f7'

  # sourceforge.net/qbittorrent/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  depends_on macos: '>= :high_sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'

  zap trash: [
               '~/.config/qBittorrent',
               '~/Library/Application Support/qBittorrent',
               '~/Library/Caches/qBittorrent',
               '~/Library/Preferences/org.qbittorrent.qBittorrent.plist',
               '~/Library/Preferences/qBittorrent',
               '~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState',
             ]
end
