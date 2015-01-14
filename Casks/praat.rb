cask :v1 => 'praat' do
  version '5.4.04'

  if Hardware::CPU.is_32_bit?
    sha256 'c0ad0db792bb5fa568763355cfce8f9b319cb7808759e79666fd4d3aeb84a336'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '8e8b5d3a3e9e8dd77891f29208df400724d2ba43a1e66a72e5837d4f8dcc28e5'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
