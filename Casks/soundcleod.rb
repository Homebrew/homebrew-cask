cask 'soundcleod' do
  version '1.4.0'
  sha256 '6242f0de6b0970006b5cfc08e9a40c4bf034eac7439d609c89956489558edc73'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
