cask 'c0re100-qbittorrent' do
  version '4.1.8.3'
  sha256 'f0b0019eac8182b6e4e8c56c7879398a7d563cabc53c5e748e4440692da83725'

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
