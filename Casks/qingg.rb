cask 'qingg' do
  version '2.6.1'
  sha256 '873fb7be341aa9f9e2f4894001e8b08b365ca3f2da4afc9e4314b5d84bfc9ea8'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: '798eddd96f2008f1c6472b73a07c72b67d5631cd76eb922a2593e5f15e3d9c89'
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
