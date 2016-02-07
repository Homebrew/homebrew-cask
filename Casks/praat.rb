cask 'praat' do
  version '6.0.13'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'f82242cc2fbc07ae5b9218e7707f842f0a428b0db019db04d0a0936dcb4c0298'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 'c57346104bb04902315c578bcd10c226853dc0e760ac1d09d4a7ba596f0c4ebc'
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
