class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5371_mac64.dmg'
    version '5.3.71'
    sha256 '6ee5e8a9ee44456e3d33c2139dd34ac974a76ef6550217d88cd79bb68f3cf5b4'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5371_mac32.dmg'
    version '5.3.71'
    sha256 'e5e20b3035d6831b6c388c1190fe23ceae195e4691152357c4bf0bc739889172'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
