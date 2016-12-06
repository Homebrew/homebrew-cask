cask 'praat' do
  version '6.0.22'
  sha256 '21ca47f23a7f366bf56a8745d4171339d1e55c97c08b7bf36d65359554f7b964'

  url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'd070c1558ef1f12db33da100192e4b2269f2c7194b395ce1049fee50c770dbc6'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
