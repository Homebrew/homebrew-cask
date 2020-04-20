cask 'praat' do
  version '6.1.12'
  sha256 'c3da9f39833f923f40f91e3842cf5730f72b17fb06eb365df807a06a7a108c06'

  # github.com/praat/praat/ was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
