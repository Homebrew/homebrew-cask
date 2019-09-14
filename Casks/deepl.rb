cask 'deepl' do
  version '1.0.1'
  sha256 'eacb5702a750a0d49a4da8165f3951d4dc519ab6363eb707e28af91164e019e7'

  url "https://www.deepl.com/macos/download/LpsA0EG5frbfX8p5/DeepL#{version.no_dots}.zip"
  name 'DeepL'
  homepage 'https://www.deepl.com/'

  app 'DeepL.app'

  # Not Working because can't find the correct PID to kill see https://github.com/Homebrew/homebrew-cask/issues/69000#
  uninstall launchctl: 'com.linguee.DeepLLauncher',
            signal:    [
                         ['TERM', 'com.linguee.DeepLStatusBar'],
                         ['TERM', 'com.linguee.DeepLLauncher'],
                         ['TERM', 'com.linguee.DeepLCopyTranslator'],
                       ]

  zap trash: [
               '~/Library/Caches/com.linguee.DeepLCopyTranslator',
               '~/Library/Caches/com.linguee.DeepLCopyTranslator.ShipIt',
               '~/Library/Group Containers/*.com.linguee.DeepL',
               '~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist',
             ]
end
