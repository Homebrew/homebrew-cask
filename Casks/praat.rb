cask :v1 => 'praat' do
  version '5.4.15'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '83ecf829b0b31a5b3813957f83cb01c71c0800ac3ef402020ce1954c427d4744'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac32.dmg"
  else
    sha256 '9781f8a8fabd4d85daafeeaf6a015bf8304ecd97cf8e20ed39a0e2f910fc46bb'
    url "http://www.fon.hum.uva.nl/praat/praat#{version.gsub('.','')}_mac64.dmg"
  end

  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
