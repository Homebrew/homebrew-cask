cask :v1 => 'praat' do
  version '5.4.17'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '7892904107b17aeff4c9cd4c08daadf2d57d821c1ee8ce0837b307fabacdf96c'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 '0c5201831a215fa5e8c64e01dbeb5a07cf933fd5941d718df9b98e961f20f062'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
