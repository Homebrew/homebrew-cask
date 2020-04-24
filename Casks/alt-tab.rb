cask 'alt-tab' do
  version '3.16.0'
  sha256 '432cde6423f914a0699ba62ce1e314e2a2198e7c022c8d2bdeb7546feaff05cd'

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
