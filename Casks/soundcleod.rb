class Soundcleod < Cask
  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://raw.github.com/salomvary/soundcleod/master/appcast.xml'
  homepage 'http://salomvary.github.io/soundcleod/'
  version 'latest'
  sha256 :no_check
  link 'SoundCleod.app'
end
