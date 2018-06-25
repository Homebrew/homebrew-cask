cask 'qingg' do
  version '2.6.3'
  sha256 '32373a2407d027ad69d78efa5af2bab64dcc1d2f5e7ad4cb8b13c61aa4a5dc6c'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php'
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
