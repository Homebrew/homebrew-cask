cask 'surge-synthesizer' do
  version '1.6.4.1'
  sha256 '50e64edaa6124fec85868fdb6627969d4d6ee9641dce45c606471b0b274906d7'

  # github.com/surge-synthesizer/releases was verified as official when first introduced to the cask
  url "https://github.com/surge-synthesizer/releases/releases/download/#{version}/Surge-#{version}-Setup.dmg"
  appcast 'https://github.com/surge-synthesizer/releases/releases.atom'
  name 'Surge - a Digital Synthesizer'
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
