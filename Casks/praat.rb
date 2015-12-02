cask :v1 => 'praat' do
  version '6.0.06'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'f82242cc2fbc07ae5b9218e7707f842f0a428b0db019db04d0a0936dcb4c0298'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 '8a5e2cbc79b5ef999231f0f108f864e3fdacf020942e166a930c40353eff1b06'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
