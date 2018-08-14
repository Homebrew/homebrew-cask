cask 'praat' do
  version '6.0.41'
  sha256 'adc0d2cda4d1166e35d3f24723a6b5f767cbcf3ebbcdce156d2aa8f96de9fce0'

  # github.com/praat/praat was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
