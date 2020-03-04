cask 'firecamp' do
  version '1.0.4'
  sha256 '623c4eee994a805b0cf656abfd91709ce2990e27abd1ba4c6427f488487c8a2c'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
