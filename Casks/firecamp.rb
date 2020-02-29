cask 'firecamp' do
  version '1.0.1'
  sha256 '9e55a4e6ba354babc7adf9d935136afc5ceddf46edfcb10b1c90b5ed17c7ac7c'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
