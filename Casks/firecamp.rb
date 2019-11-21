cask 'firecamp' do
  version '0.7.0'
  sha256 'cd4e3905e3c1e15b3df5ec306e0cfe9901f4f1c5c55dc4af6a8ae602c4751ce7'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.app/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
