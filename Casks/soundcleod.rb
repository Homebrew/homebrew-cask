cask 'soundcleod' do
  version :latest
  sha256 :no_check

  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://raw.github.com/salomvary/soundcleod/master/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'
  license :mit

  app 'SoundCleod.app'
end
