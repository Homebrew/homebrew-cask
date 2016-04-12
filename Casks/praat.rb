cask 'praat' do
  version '6.0.16'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :leopard
    sha256 'cd9d7b8c5d48e2d7f0673e0aa13e82e198f66e958d173d679e38a94abb1b2435'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 '1fd09e69acf49e18d49a485f37b2c1d57fa1b8a9f19db99095ac9d7465f0d017'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'a260a0ac0d3fdc0cab09f8d9788c9022fc6c12c0cbe801e98b5cdadeb8300f0d'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', target: 'praat'
end
