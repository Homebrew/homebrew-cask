cask 'praat' do
  version '6.0.14'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :leopard
    sha256 'cd9d7b8c5d48e2d7f0673e0aa13e82e198f66e958d173d679e38a94abb1b2435'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 'e8a1fb66cb9c3fe5ce85a9bed6a7f9c255e566637571847775f312b4ae9965b6'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '962c0be2b39dbe200c8f7c2c2c46c63e08f7a5581b5dd3f92b08193e841e48c8'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', target: 'praat'
end
