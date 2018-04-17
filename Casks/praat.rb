cask 'praat' do
  version '6.0.38'
  sha256 'dc69203cddecf1c4dde441d2fd78e83b35b96b498fb7bc9d02a3a644299053ae'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '885c266f67baf05fff6d811f3470bf254b76b666758549823c4945abfd151377'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
