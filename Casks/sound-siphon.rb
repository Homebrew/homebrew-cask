cask 'sound-siphon' do
  version '3.2.1,5876'
  sha256 'a3e28bdb4e848b43a84834ad1c07db3ddfc6c4970cd1624f7fa6133531971619'

  # staticz.net was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
