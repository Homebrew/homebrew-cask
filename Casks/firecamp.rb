cask 'firecamp' do
  version '0.7.3'
  sha256 '6c0cd64f2ef94770ebb60a6e2d8b7f751f9ea386a78961078996b982a99ab269'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.app/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
