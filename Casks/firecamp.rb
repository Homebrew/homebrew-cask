cask 'firecamp' do
  version '0.7.4'
  sha256 '1bd5221d76562a9c5accec995f2dca039da2c3dae33a48adf058605bef3113e8'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.app/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
