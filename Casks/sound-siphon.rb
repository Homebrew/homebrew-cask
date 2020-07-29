cask 'sound-siphon' do
  version '3.2.3,5876'
  sha256 '0e5e955a2976963580d14d1711263a8d0688a1160e4cbd147f848fa2e098e8f7'

  # staticz.net/ was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  app 'Sound Siphon.app'
end
