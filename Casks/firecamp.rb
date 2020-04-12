cask 'firecamp' do
  version '1.2.2'
  sha256 '1241c4ee06ff845cf4b2dfdeba73b77d54e01854f959f4e55d15b2f9b91caac2'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
