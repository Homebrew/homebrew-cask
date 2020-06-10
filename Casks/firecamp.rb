cask 'firecamp' do
  version '1.2.9'
  sha256 'bcb7c23040664f9be2bc81acb5404340d7e63e5d0a5e58d09bc6a9f30b9507e6'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
