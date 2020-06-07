cask 'alt-tab' do
  version '4.1.1'
  sha256 'c5c7c5ec2637597c0ad0630b27472d45f71f2400a33db462eba28e6638399769'

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
