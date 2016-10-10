cask 'praat' do
  version '6.0.21'
  sha256 '4c6c35f2c72b5862ac79e29989ac244618e1997e87c79b1bf7828360314b5f05'

  url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '3d74ff31449d5f37f3cca51c91e62ba828697e7e247ac60f8e62ca26f4a3ff8a'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
