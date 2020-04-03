cask 'alt-tab' do
  version '3.3.3'
  sha256 'b17120b0850c6d481e4a5d2a64371a16eb43cabb29fd598a11d9671e719bc1b8'

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
