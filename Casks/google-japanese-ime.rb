class GoogleJapaneseIme < Cask
  url 'https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'
  version 'stable-channel'
  no_checksum
  install 'GoogleJapaneseInput.pkg'
end
