class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5377_mac64.dmg'
    version '5.3.77'
    sha256 '8015c1a41e6065f51f9bba887a8efd00bb1624d822624b2483c759615a8256a4'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5377_mac32.dmg'
    version '5.3.77'
    sha256 '6a6fa459c4e076f8e4236c2613e0428a5ff993429fce69e7f9d9fa3d0a821127'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
