cask 'craftmanager' do
  version '1.0.87'
  sha256 '14faf273dcb13c610a32d10aacace2b8989df4cedab7dc01d53b5c712116d96d'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
