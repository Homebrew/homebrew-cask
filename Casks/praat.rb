class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5364_mac64.dmg'
    version '5.3.64'
    sha256 'e2cc984401d44832f552d11a72d9ea24cdecffda96dcb58330ff7d8d1279ecad'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5364_mac32.dmg'
    version '5.3.64'
    sha256 'c982b3e5d66b383d9928ff66b5e8b2332fccfde377d67d1650b04680dbf1efcd'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
