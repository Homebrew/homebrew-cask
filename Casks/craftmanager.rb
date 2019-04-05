cask 'craftmanager' do
  version '1.0.79'
  sha256 'cbb1d44f670cc28e063d977e3b1a85371e91beff934c9e8b66a4c58b62b453a8'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
