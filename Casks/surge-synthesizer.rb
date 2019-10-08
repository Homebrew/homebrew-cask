cask 'surge-synthesizer' do
  version '1.6.2.1'
  sha256 '6f719dcd35e332b90c34e83c619c8dbfab3c62fd7b2e7d89b37c1a02e3873178'

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
