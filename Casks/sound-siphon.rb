cask 'sound-siphon' do
  version '3.0.3'
  sha256 'eea09f217152dfb3b04d81b1c8b488dd2c989d2a3faf17b0aa07e4d2fce94c47'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundSiphon_#{version}.dmg"
  appcast 'http://staticz.net/updates/soundsiphon3.rss'
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
