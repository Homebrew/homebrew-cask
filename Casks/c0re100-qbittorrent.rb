cask 'c0re100-qbittorrent' do
  version '4.2.3.10'
  sha256 '5fa2b179191e1d6b6193d1edc247364502a7930494da645598fdbd71d52dedd3'

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
