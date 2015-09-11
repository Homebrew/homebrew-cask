cask :v1 => 'praat' do
  version '5.4.18'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '11eef6277f6b9af3456634dbbc39ee42362fff5a205a05e7f9b8cf665cd71334'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 'a18987eb9cadb03a31f0f0843e08dbbd3ceccc845834649178cc270c1b9f83bd'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
