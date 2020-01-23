cask 'firecamp' do
  version '0.9.2'
  sha256 'd38f78e555832cbd9ddfca29a7ca146fb61aa4d6cf63aff981fc6bdf23bceb22'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
