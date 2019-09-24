cask 'surge-synthesizer' do
  version '1.6.2'
  sha256 '1d938979ef4bbef0772440cb871fa6c68cf835afa03fbc48bb41520d3c8fd56d'

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
