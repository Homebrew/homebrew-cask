cask 'qingg' do
  version '2.3.7'
  sha256 'f10021d5d650f0bfb4ef1e7448bd0faae8c2b93adb31346db947135c4ffa95fb'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: 'fca8f7ae6e07c7cea158d0e37ff34b44931287405df78aedfcf32aa9aebd11f6'
  name 'QinggIM'
  name '清歌输入法'
  homepage 'https://qingg.im/mac/'
  license :gratis

  auto_updates true

  pkg 'Qingg.pkg'

  uninstall pkgutil: 'com.aodaren.Qingg.pkg'

  zap delete: [
                '~/Library/Application Support/Qingg',
                '~/Library/Application Support/com.aodaren.inputmethod.Qingg',
                '~/Library/Caches/com.aodaren.inputmethod.Qingg',
                '~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist',
              ]
end
