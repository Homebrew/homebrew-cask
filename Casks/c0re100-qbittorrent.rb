cask 'c0re100-qbittorrent' do
  version '4.2.1.10'
  sha256 'fa16cad5c7edd623a940aa2d2dcb1a333b6e3f79e0b5e1ed33cc8f748969aa2c'

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
