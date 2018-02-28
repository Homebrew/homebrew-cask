cask 'craftmanager' do
  version '1.0.51'
  sha256 '9c754aa774cf59527448a848caa25e5c681d876486547de7fa30118facbfdcc1'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'ef3c8238b2d69132806f0f9ceaf955d80d142c24c3fb94829a91e1c3d918b4e6'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
