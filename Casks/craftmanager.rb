cask 'craftmanager' do
  version '1.0.44'
  sha256 'cd76f42fe63caaa0876736b0e9e3c27a5f4cb746808cc478e4068173638d5605'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '2c9bb71d38c675d8990495aa41bf011af3fe9bf294d2451a41015003d16aee96'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
