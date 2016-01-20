cask 'google-japanese-ime' do
  version :latest
  sha256 :no_check

  # google.com is the official download host per the vendor homepage
  url 'https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg'
  name 'Google Japanese Input Method Editor'
  homepage 'https://www.google.co.jp/ime/'
  license :gratis

  pkg 'GoogleJapaneseInput.pkg'

  uninstall pkgutil:   'com.google.pkg.GoogleJapaneseInput',
            launchctl: [
                         'com.google.inputmethod.Japanese.Converter',
                         'com.google.inputmethod.Japanese.Renderer',
                       ]
end
