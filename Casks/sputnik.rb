cask 'sputnik' do
  version '1.0.7'
  sha256 'f35342dcb780647749631597990989bb55c3df03a57fd76457ddf40237fcf750'

  url "http://sputnik.szwacz.com/downloads/Sputnik-v#{version}.dmg"
  name 'Sputnik'
  homepage 'http://sputnik.szwacz.com/'
  license :gpl

  app 'Sputnik.app'
end
