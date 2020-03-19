cask 'firecamp' do
  version '1.0.5'
  sha256 '9c67a0a7a37bbacbdd382f554afb45135953d8f7533ac7671fdbaed735af607a'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
