cask :v1 => 'praat' do
  version '5.4.05'

  if Hardware::CPU.is_32_bit?
    sha256 'cae9d2910ec0e99e990798e30dd93778296e1e298c82b5051397eaa34b0a615b'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '9c9c836cbfaf3a1204bfea7b41531a5bda7a4bbff11ef255530a7e91600eb541'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
