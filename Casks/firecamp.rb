cask 'firecamp' do
  version '1.2.0'
  sha256 'f37e3df03a759d77ead93e3ab09f3b6365b876c3ef83febc914528ed629e58df'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.io/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.io/'

  app 'Firecamp.app'
end
