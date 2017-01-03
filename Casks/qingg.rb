cask 'qingg' do
  version '2.4.4'
  sha256 '485781e489a4a7c312611eef6890f13a0d2a41e46bc488d01729dc4a8253be26'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: 'ebae1be19a173e711566be2765fb8e0037553885a52fc21b02cd0e48d9540d3b'
  name 'QinggIM'
  name '清歌输入法'
  homepage 'https://qingg.im/mac/'

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
