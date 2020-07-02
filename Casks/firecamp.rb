cask 'firecamp' do
  version '1.4.0'
  sha256 '5a411ae15559affb2f7f697a3bd1e8ee6049e619f19800ad7ddf504507e3f13f'

  # firecamp.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/downloads/'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
