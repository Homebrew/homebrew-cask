cask 'deepl' do
  version '1.6.0'
  sha256 '2982015c3bde03e909a79b14fdd910e0b4281f626bd851e1ab6182e7a9e90e13'

  url "https://www.deepl.com/macos/download/LpsA0EG5frbfX8p5/DeepL#{version}.zip"
  name 'DeepL'
  homepage 'https://www.deepl.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'DeepL.app'

  uninstall quit: [
                    'com.linguee.DeepLCopyTranslator',
                    'com.linguee.DeepLLauncher',
                    'com.linguee.DeepLStatusBar',
                  ]

  zap trash: [
               '~/Library/Caches/com.linguee.DeepLCopyTranslator',
               '~/Library/Caches/com.linguee.DeepLCopyTranslator.ShipIt',
               '~/Library/Group Containers/*.com.linguee.DeepL',
               '~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist',
             ]
end
