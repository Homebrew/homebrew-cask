cask 'alt-tab' do
  version '3.6.1'
  sha256 '1abd2a34cb9d153356bbd009c050c200ffd2a8553fc0a7556bffab14e9365441'

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
