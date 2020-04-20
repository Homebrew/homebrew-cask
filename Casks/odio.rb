cask 'odio' do
  version '1.4.0'
  sha256 '2f1b584f2ace2fee03f4786b59b29ccb0a0e4099580c4fd1a5817b1ab084636f'

  # github.com/odioapp/odio/ was verified as official when first introduced to the cask
  url "https://github.com/odioapp/odio/releases/download/v#{version}/odio-#{version}.dmg"
  appcast 'https://github.com/odioapp/odio/releases.atom'
  name 'odio'
  homepage 'https://www.odio.io/'

  app 'odio.app'
end
