cask 'firecamp' do
  version '0.7.8'
  sha256 '6620d0782f9e14aeb32163027bf600501ddb6024dc0ee1f929c005e1726e8555'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.app/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
