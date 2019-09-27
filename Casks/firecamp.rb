cask 'firecamp' do
  version '0.6.7'
  sha256 '9da872bd0de9cee93f7469ace821a1e5b640c326143b1d4e1ab95bfd3268794a'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
