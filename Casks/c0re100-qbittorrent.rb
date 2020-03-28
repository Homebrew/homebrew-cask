cask 'c0re100-qbittorrent' do
  version '4.2.2.10'
  sha256 '19cef2ee72e0f4aa53e9bcc1dd0883854a39ed7647aa57e5f4c7d8d805612ab4'

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
