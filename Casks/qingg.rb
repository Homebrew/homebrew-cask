cask 'qingg' do
  version '2.6.0'
  sha256 '4cb0f6399c4f59bcfd2ecb557702adce6a7d9ccf718019827ec54630a1d80ea9'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: '447bd53ca90a8a5d919c765f8a01f9d09c0c47d3ef10af5eab8b39e3ce9b724a'
  name 'QinggIM'
  name '清歌输入法'
  homepage 'https://qingg.im/mac/'

  auto_updates true

  pkg 'Qingg.pkg'

  uninstall pkgutil: 'com.aodaren.*'

  zap trash: [
               '~/Library/Application Support/Qingg',
               '~/Library/Application Support/com.aodaren.inputmethod.Qingg',
               '~/Library/Caches/com.aodaren.inputmethod.Qingg',
               '~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist',
             ]
end
