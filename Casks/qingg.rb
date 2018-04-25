cask 'qingg' do
  version '2.6.2'
  sha256 '8e85120cf7fb1abba0c2c9b6095a4b509e8751d4429a4fa58d523c8be01e6b7c'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: 'bc2b6e26131538d64a135e94503d4da50c9f4741c0067fe119921d6f0537f505'
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
