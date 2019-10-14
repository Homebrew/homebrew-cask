cask 'firecamp' do
  version '0.6.9'
  sha256 '66c9bf83ab403d1dd39ec844e947232ec6b4d3751bd87b54051eaf1f0c5f476b'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
