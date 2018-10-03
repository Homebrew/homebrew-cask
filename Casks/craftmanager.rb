cask 'craftmanager' do
  version '1.0.71'
  sha256 'b143a63d72a3f6fd3539a275e4f45662b92b46372ff1a06245be97928fdbb6d0'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
