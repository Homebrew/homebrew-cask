cask 'alt-tab' do
  version '3.7.2'
  sha256 '7e739abbab761fbd666aaaf57e13f661a2e1c07a72ccfd0f5b042ca5b1edfe14'

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
