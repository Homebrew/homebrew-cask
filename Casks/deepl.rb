cask 'deepl' do
  version :latest
  sha256 :no_check

  url 'https://www.deepl.com/macos/download/DeepL.dmg'
  name 'DeepL Translator'
  homepage 'https://www.deepl.com/'

  app 'DeepL.app'

  uninstall quit: [
                    'com.linguee.DeepLCopyTranslator',
                    'com.linguee.DeepLLauncher',
                    'com.linguee.DeepLStatusBar',
                  ]

  zap trash: [
               '~/Library/Caches/com.linguee.DeepLCopyTranslator',
               '~/Library/Group Containers/group.com.linguee.DeepL',
               '~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist',
             ]
end
