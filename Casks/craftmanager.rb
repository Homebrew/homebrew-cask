cask 'craftmanager' do
  version '1.0.68'
  sha256 'd1d57980d5cfd1cd509d1a8c332455a779b5b9f4ed9dd6cc4f927cf66290d66f'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
