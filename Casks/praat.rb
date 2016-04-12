cask 'praat' do
  version '6.0.16'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :leopard
    sha256 '9131b45fc71a5c6e6ff0d84aabcd1a04f1b1dfb4c8b2872410b9306595acd54c'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 '1fd09e69acf49e18d49a485f37b2c1d57fa1b8a9f19db99095ac9d7465f0d017'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '1b78e5b9e71d4c11e2c76e0d9367a64ed50315cb35264e3f86c681b8648c1459'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', target: 'praat'
end
