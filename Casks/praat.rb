cask :v1 => 'praat' do
  version '5.4.12'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '6944362346e198f9bc02cbebf192c87eaf9ea8d28513f06aaec52253135fa1d6'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '9a3248579542335813f6529d32a6fd72ee28789ebcec0c57efcef51fc06e50a4'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
