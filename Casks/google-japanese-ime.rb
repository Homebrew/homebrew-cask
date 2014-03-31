class GoogleJapaneseIme < Cask
  url 'https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'
  version 'latest'
  no_checksum
  install 'GoogleJapaneseInput.pkg'
  uninstall :pkgutil => 'com.google.pkg.GoogleJapaneseInput',
            :launchctl => [
                           'com.google.inputmethod.Japanese.Converter',
                           'com.google.inputmethod.Japanese.Renderer'
                          ]
end
