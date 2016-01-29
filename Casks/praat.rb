cask 'praat' do
  version '6.0.12'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'f82242cc2fbc07ae5b9218e7707f842f0a428b0db019db04d0a0936dcb4c0298'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac32.dmg"
  else
    sha256 'aa2033c39efd1c7076e949564e156b6cb2e805a6f5aba4e3710cd2e6b0a83dfb'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '63dab7096cf6d3de630dc8a7affb49da35128b2e54e2e02e16c76ded3975f005'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', target: 'praat'
end
