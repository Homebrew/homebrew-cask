cask 'qingg' do
  version '2.3.8'
  sha256 '10413622fe011c21e9e3f788ab9aded78078e6aab6072d33c0b3d9df9395a45a'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: 'fc1dda5622e3d760d9fb26444a1c5f8217f3bd0984ebedc1816ef5dfc96daf63'
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
