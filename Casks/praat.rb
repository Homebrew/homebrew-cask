cask 'praat' do
  version '6.0.23'
  sha256 '814ba351c8de49723d3d739e9e34ec9980e538303695648e27ca67c21c581f86'

  url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'ac0f54b831fb8f604018afecfcb2f989eb5c8710d94b5a71a16795a8cee548cd'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
