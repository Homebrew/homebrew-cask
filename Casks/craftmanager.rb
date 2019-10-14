cask 'craftmanager' do
  version '1.0.88'
  sha256 'fa49e98529bca9027113da97467671aa6035837a322284d2a9908b6c6afce663'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
