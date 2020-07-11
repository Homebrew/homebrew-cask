cask 'craftmanager' do
  version '1.0.98'
  sha256 'db9f7b2441e0400492bb348821260d7952912a0e383cd6a021f5bcc728cd1980'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
