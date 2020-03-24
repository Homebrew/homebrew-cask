cask 'deepl' do
  version '1.7.0'
  sha256 '6714a9222cd95d0e0c56aa92784ee9fc6dc74b0dae66bc0571369faef674cdff'

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
