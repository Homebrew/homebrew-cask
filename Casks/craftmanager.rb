cask 'craftmanager' do
  version '1.0.54'
  sha256 '51d8bf50e528e5b476949a75c78f412bcf5c2c2f7b7bc7530213d5f6bf234b2c'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '59e8143595359fff7b70fb906464a630c0789beeac5e7603d2250455ec63c48f'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
