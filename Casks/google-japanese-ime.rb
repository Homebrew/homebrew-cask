cask :v1 => 'google-japanese-ime' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'GoogleJapaneseInput.pkg'

  uninstall :pkgutil => 'com.google.pkg.GoogleJapaneseInput',
            :launchctl => [
                           'com.google.inputmethod.Japanese.Converter',
                           'com.google.inputmethod.Japanese.Renderer'
                          ]
end
