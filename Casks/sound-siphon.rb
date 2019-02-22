cask 'sound-siphon' do
  version '3.1.2'
  sha256 '44fec84f7dbd6e5c1cf449e7d057ad84008b9346c943aec68c062384d7cecc74'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundSiphon_#{version}.dmg"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
