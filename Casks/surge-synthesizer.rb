cask 'surge-synthesizer' do
  version '1.6.5'
  sha256 '1357c2534142e6df33a6b5d5f840adc178403c9c97e952e300ce58b074a70602'

  # github.com/surge-synthesizer/releases was verified as official when first introduced to the cask
  url "https://github.com/surge-synthesizer/releases/releases/download/#{version}/Surge-#{version}-Setup.dmg"
  appcast 'https://github.com/surge-synthesizer/releases/releases.atom'
  name 'Surge - A Digital Synthesizer'
  homepage 'https://surge-synthesizer.github.io/'

  pkg "Surge-#{version}-Setup.pkg"

  uninstall pkgutil: [
                       'com.vemberaudio.vst2.pkg',
                       'com.vemberaudio.vst3.pkg',
                       'com.vemberaudio.au.pkg',
                       'com.vemberaudio.resources.pkg',
                       'org.surge-synthesizer.fxau.pkg',
                       'org.surge-synthesizer.fxvst3.pkg',
                     ]
end
