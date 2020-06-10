cask 'deepl' do
  version '1.7.1'
  sha256 '5b291f3294ecfa1a596c420505a2e4d7c460f54e8f49b97fb0cff7ba69918b86'

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
