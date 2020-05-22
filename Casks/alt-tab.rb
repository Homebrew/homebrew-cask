cask 'alt-tab' do
  version '3.24.1'
  sha256 'f61c392e29fcf12cbf4596d29fc0aab140195c5d880b772339f5e2470935a73b'

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
               '~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies',
               '~/Library/Preferences/com.lwouis.alt-tab-macos.plist',
             ]
end
