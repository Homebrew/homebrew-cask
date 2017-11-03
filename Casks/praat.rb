cask 'praat' do
  version '6.0.35'
  sha256 '04185cdf2cc82c970250c5e9e1fc80bdbbf0e9b461919b60ab8f6e17cc66ee97'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '83328a6e18cda9f1038916cee83314c47d3b58ff46b64df7bca53f402542eee5'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
