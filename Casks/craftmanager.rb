cask 'craftmanager' do
  version '1.0.86'
  sha256 '5287836ef8ec84376b7ec7b0189fccdbac5b19868a3c5b9a5558b525b26ca26f'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
