class Praat < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5382_mac32.dmg'
    version '5.3.82'
    sha256 'c1ef06ed8fd9e36d5eb96699daf5fba3e04e2c32edcda0c2981d8f817c019371'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5382_mac64.dmg'
    version '5.3.82'
    sha256 'c02aa1ae0e896325cbc8a917e5cfef37a0f6e38e78d2b71757134158f7e563f3'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
