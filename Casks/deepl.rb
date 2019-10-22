cask 'deepl' do
  version '1.1.1'
  sha256 'b299a9ba63e132a7df5d8c6fb1659407e32c84a01de10b7c5b1a6bac842d20e7'

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
