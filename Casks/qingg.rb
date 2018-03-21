cask 'qingg' do
  version '2.5.0'
  sha256 '98f3eb1a56a38dd230aac44e571001859558e28feb9e756078998bf4b9a2cd7a'

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast 'https://qingg.im/sparkle/appcast.php',
          checkpoint: '751eb771d487c59dd6fafab1fd910807813f70d198c869081bcbb8d6f28066be'
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
