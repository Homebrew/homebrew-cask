cask 'sticker' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.chompstomp.Sticker was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.chompstomp.Sticker/Sticker.zip'
  name 'Sticker Window manager'
  homepage 'http://www.chompstomp.com/sticker'

  app 'Sticker.app'
end
