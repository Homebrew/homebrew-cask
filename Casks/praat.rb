class Praat < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.fon.hum.uva.nl/praat/praat5369_mac64.dmg'
    version '5.3.69'
    sha256 '03105e853beb8344c84254199b126486b51dd369e31284ff870980bc04d12349'
  else
    url 'http://www.fon.hum.uva.nl/praat/praat5369_mac32.dmg'
    version '5.3.69'
    sha256 '599c9398801bdd9f3e824b97ade9f8a0b7729d5ab6b68d8abbd319540f102d10'
  end
  homepage 'http://www.fon.hum.uva.nl/praat/'
  link 'Praat.app'
end
