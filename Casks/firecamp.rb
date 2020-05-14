cask 'firecamp' do
  version '1.2.5'
  sha256 '7e114cfc680208d0188702fb8fed3b7a09fd10c098f5a0a63081779b61f7d33e'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
