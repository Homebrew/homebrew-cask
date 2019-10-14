cask 'sound-siphon' do
  version '3.1.3'
  sha256 'ca0630f918cf98b5cf8e648d88ca73a8e042bba1f8140cf3a0593f577879f38a'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundSiphon_#{version}.dmg"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
