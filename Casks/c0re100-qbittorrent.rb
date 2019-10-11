cask 'c0re100-qbittorrent' do
  version '4.1.8.2'
  sha256 'd9fd17f652774da75d374ea8880d5363cc21d71774e7a584146707fbfe7f9b9d'

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  appcast 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases.atom'
  name 'qBittorrent Enhanced Edition'
  homepage 'https://github.com/c0re100/qBittorrent-Enhanced-Edition'

  depends_on macos: '>= :sierra'

  app 'qbittorrent.app'

  zap trash: [
               '~/.config/qBittorrent',
               '~/Library/Application Support/qBittorrent',
               '~/Library/Caches/qBittorrent',
               '~/Library/Preferences/org.qbittorrent.qBittorrent.plist',
               '~/Library/Preferences/qBittorrent',
               '~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState',
             ]
end
