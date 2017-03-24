cask 'praat' do
  version '6.0.28'
  sha256 '698932902082910592944ad01641ce1be8708982ac3f7fcf18c575bec182c8ed'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '251289d3ed912f18a332ec7c8c719a0074e25726a98f5baf80674b754e293de8'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
