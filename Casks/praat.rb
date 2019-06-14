cask 'praat' do
  version '6.0.55'
  sha256 '63e3f944a9d42d6d813c33c975d35ad31ac6063623361546d0c0345b1c6c9417'

  # github.com/praat/praat was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
