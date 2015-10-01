cask :v1 => 'praat' do
  version '5.4.20'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '57206a5c68393f2f52fcd970c87315b43de1bba4831b811e1f42a909cefa1c81'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 'b8f5a5a2604ec3094e48eff2bd80c1d34794d2cde216d22bf8400c682db3c36f'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
