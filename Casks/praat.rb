cask :v1 => 'praat' do
  version '5.4.22'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'cddeaceb9d9576d957d2fcdf9f4c7303ece95fb36848b7866913cdba85407c63'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 '4c2daecc64be8aeb887237a1008a2bc13695232e2350134d42bb803b6d755f77'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
