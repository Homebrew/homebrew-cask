cask 'firecamp' do
  version '1.0.9'
  sha256 '92da4d80699dafa97c54ab05490553019d8d8d59af27d1923373eb164f1aa72b'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
