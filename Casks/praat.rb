cask :v1 => 'praat' do
  version '5.4.19'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'ed707527edbf8034984176185ec83666e0b013be299bffe3ae68de5f294eebfc'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 '34c60855ed24a528af1be5330822fea1e2e5b112cd8c3d690baad8d8f1d7901b'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
