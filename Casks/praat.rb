cask 'praat' do
  version '6.0.54'
  sha256 '139c47db10ac2583d3ba63d7cb3b36e43068d6d5ad94fe6a758f28bfcf8595c9'

  # github.com/praat/praat was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
