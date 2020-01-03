cask 'firecamp' do
  version '0.8.0'
  sha256 'bc3321539f8027bbfbe1ef9b6873296eaba25fa0746b75ef65c13b02287ca375'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
