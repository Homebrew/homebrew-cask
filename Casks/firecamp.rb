cask 'firecamp' do
  version '1.2.2'
  sha256 '3d42d0d2793c283f5b7f86179790b6c77f5fbdab5615a48aab61a04bcec5c572'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
