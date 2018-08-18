cask 'craftmanager' do
  version '1.0.70'
  sha256 '6b0cd143163ce44ac320da5bb1f4ffd2c009d195464e45c62e46571465dcf8e4'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
