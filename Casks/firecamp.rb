cask 'firecamp' do
  version '1.1.1'
  sha256 'eb10be146f7aab87716b364e213dbb9b92039f128a8df2549edc6ea1a8835183'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
