cask 'deepl' do
  version '1.3.0'
  sha256 'b96de40392fa89c4e5445c7bb891eb54f10ebafd7a7a0d746f896bc03034f906'

  url "https://www.deepl.com/macos/download/LpsA0EG5frbfX8p5/DeepL#{version.no_dots}.zip"
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
