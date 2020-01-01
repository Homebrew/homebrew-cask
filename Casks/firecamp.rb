cask 'firecamp' do
  version '0.7.10'
  sha256 'f65f3694192ae435b84d3bc1d857ead56e9d87a345a190dfb92e89be2c9bc4f2'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
