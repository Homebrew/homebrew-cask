cask 'surge-synthesizer' do
  version '1.6.3'
  sha256 '4f7857a7caa025ceec2bd35d9ed1bf0035480dae52993721754d2b49729d3f6a'

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
