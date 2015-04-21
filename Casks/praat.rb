cask :v1 => 'praat' do
  version '5.4.08'

  if Hardware::CPU.is_32_bit?
    sha256 'c0eff18cbd8966a5a178831a7203d1b4c8c058f8342a0570a9eba03f9ff744b6'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '6a6d41b00fb44a95885a54885e267cc8244f93b3647d61fa6048aac27a2b4a5d'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
