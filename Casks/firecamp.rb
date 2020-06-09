cask 'firecamp' do
  version '1.2.7'
  sha256 'd5f4fb695ebc8427b7bcdbda7de7c56eb465f1b3736713f49d48af88a6d2625a'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
