cask 'praat' do
  version '6.0.50'
  sha256 '120a7f25291a370c9e9f21e1561efcd2e563ef3e2b88322154323b65c106b013'

  # github.com/praat/praat was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
