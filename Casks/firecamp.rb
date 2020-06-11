cask 'firecamp' do
  version '1.2.10'
  sha256 '9b405486049dc4233ffd456533ff9d2371c349319c2fecf4c41e840c6fca72bb'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
