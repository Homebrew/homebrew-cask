cask 'firecamp' do
  version '0.6.7'
  sha256 :no_check

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
