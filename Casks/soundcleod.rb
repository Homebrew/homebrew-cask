cask 'soundcleod' do
  version :latest
  sha256 :no_check

  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://raw.github.com/salomvary/soundcleod/master/appcast.xml',
          :sha256 => 'f95a8f938521b80875ad438a059ac93e2d0e929c2c4d7622c0cbbd9b157ab0ce'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'
  license :mit

  app 'SoundCleod.app'
end
