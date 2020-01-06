cask 'firecamp' do
  version '0.8.1'
  sha256 'ca65088c9522686b229b7cad004bf6579f6c19b2e192612ae103da0cce72c031'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
