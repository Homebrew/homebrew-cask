cask 'craftmanager' do
  version '1.0.81'
  sha256 '5e8ae858805e3f7f18048bfb2cddc24f63328229a0e0e1dff5e1edd3452922d3'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
