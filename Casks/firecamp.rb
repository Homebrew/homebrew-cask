cask 'firecamp' do
  version '1.0.7'
  sha256 '8fe33d583b97993f635f083b1d3ee90c23a282cde457a89e5c29463535414d10'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
