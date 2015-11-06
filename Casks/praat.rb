cask :v1 => 'praat' do
  version '6.0.04'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'ea07129723df0063d83c0d6d9d306070e455690ee5a868a189d0ae522586674a'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac32.dmg"
  else
    sha256 'f1bc5ecabbc8f8e71683d7fcc3803166ac61fde7841e0c3ea7b5060c851e6c06'
    url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.delete('.')}_mac64.dmg"
  end

  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'
  license :gpl

  app 'Praat.app'
  binary 'Praat.app/Contents/MacOS/Praat', :target => 'praat'
end
