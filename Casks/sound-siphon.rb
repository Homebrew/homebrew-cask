cask 'sound-siphon' do
  version '3.2.2,5876'
  sha256 '2808036adb72a247af9115eb2ea731574345acfea5cd0694c049f3fe89d4a6b6'

  # staticz.net/ was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
