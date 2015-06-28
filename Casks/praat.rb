cask :v1 => 'praat' do
  version '5.4.10'

  if Hardware::CPU.is_32_bit?
    sha256 'c6b52ba692ebaf67fdc9e44d5d85a0fb475e73002e72638a275ffb22dcc09a21'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 'eaf81041ea413d0b693cb9138ff428f89d892ccd6b6d9d39cf96a7ab160777f1'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
