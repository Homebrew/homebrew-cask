cask :v1 => 'praat' do
  version '5.4.00'

  if Hardware::CPU.is_32_bit?
    sha256 '63a28727f280096cb8b72dbb2fc3c38a0ce8279d095dd6a14ffa217349f2d5e8'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 'd694ce3045ad70a600fa621f9dccb9f006b75703b28bdd5c16378843bb8cae8b'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
