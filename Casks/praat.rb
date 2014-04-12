class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5371_mac64.dmg'
    version '5.3.71'
    sha256 '6ee5e8a9ee44456e3d33c2139dd34ac974a76ef6550217d88cd79bb68f3cf5b4'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5371_mac32.dmg'
    version '5.3.71'
    sha256 '36cb033de3a4df8e9a8e662994cb0ebdd36cb65c58a9657d8bfe9e27c7e13832'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
