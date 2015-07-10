cask :v1 => 'praat' do
  version '5.4.11'

  if Hardware::CPU.is_32_bit?
    sha256 '384f1cdb9f30ec67a5e2af3f3eca3a1af92a6487a6e97e7ed684f064ca94e3a4'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '1072252a69f9e320427ed7e6b63255e94cdcb94074a070d3f9dd91bc38c3dfc4'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
