cask :v1 => 'praat' do
  version '6.0.05'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'f243824c5122f3520989331ae710535728355f23fb6625423a7bf5fdce570ac1'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 'a9f5b0bc7192b4f8d9af19c3c788c5ebf9c81d0b63651b410bf520a3e5562753'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
