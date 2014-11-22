cask :v1 => 'praat' do
  version '5.4.01'

  if Hardware::CPU.is_32_bit?
    sha256 '8e2fd3fc8a98d335eff4615fa09232b0152117220a0986d8f55fb94ac79e527b'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '762ec59883755d6aa3f44a9a15df7fe0050c453c49f30a1d3225ad57cf9f0800'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
