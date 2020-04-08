cask 'alt-tab' do
  version '3.6.0'
  sha256 '84c555a02e72d7bbf783690d318ae6452a96dffa021f8583ba1421a10cd5de43'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'AltTab.app'

  uninstall quit: 'com.lwouis.alt-tab-macos'

  zap trash: [
               '~/Library/Caches/com.lwouis.alt-tab-macos',
               '~/Library/Preferences/com.lwouis.alt-tab-macos.plist',
             ]
end
