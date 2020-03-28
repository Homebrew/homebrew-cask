cask 'craftmanager' do
  version '1.0.94'
  sha256 'c26a283410a9a52f6f0a6bd457489625746b14a25746c4ff9e433584f0e55b80'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
