cask 'craftmanager' do
  version '1.0.67'
  sha256 'dd6214107bee63cce7ab7bb3ce4b39441a7ee3e06e8802e80cc90ba609fc7ccd'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
