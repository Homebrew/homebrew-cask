cask 'firecamp' do
  version '0.7.5'
  sha256 '4206996b58d419287cb27eaf6abb0f3ddb94ac1926ff0a87bbb14d8d7fe8e670'

  # firecamp.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://firecamp.ams3.digitaloceanspaces.com/versions/mac/Firecamp-#{version}.dmg"
  appcast 'https://firecamp.app/docs/installation'
  name 'Firecamp'
  homepage 'https://firecamp.app/'

  app 'Firecamp.app'
end
