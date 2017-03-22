cask 'sputnik' do
  version '1.0.7'
  sha256 'f35342dcb780647749631597990989bb55c3df03a57fd76457ddf40237fcf750'

  url "http://sputnik.szwacz.com/downloads/Sputnik-v#{version}.dmg"
  appcast 'http://sputnik.szwacz.com/',
          checkpoint: '2d8219b4370cd9fb3844a18282918b60f9d1a3132d01d28d8e4d7c2617f60869'
  name 'Sputnik'
  homepage 'http://sputnik.szwacz.com/'

  app 'Sputnik.app'
end
