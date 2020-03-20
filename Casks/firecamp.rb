cask 'firecamp' do
  version '1.0.6'
  sha256 '0fbc24f564d144784b5a79834a25174c9c9b482e16de042a8d4bdee31e2c0100'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
