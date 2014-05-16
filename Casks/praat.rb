class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5376_mac64.dmg'
    version '5.3.76'
    sha256 'eef3259bb01466a54bad8b50eea1ee727e34a7c27d8079a0f5738ed19b9f16e6'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5376_mac32.dmg'
    version '5.3.76'
    sha256 'd12f23a8c019a9b600c7bf78afb38611199562f8966544a8dda3e619a98f3c7f'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
