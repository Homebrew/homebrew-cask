cask :v1 => 'praat' do
  version '5.4.21'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 '47a389591a7874c16bba74e69eaa7200a9f4867cf6f60811eb764bd5c7a345c4'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 'edc65e625e7440e2e430fdf3e41f9ec0875f5fc7c1eea1d207e9a6b516eb7819'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
