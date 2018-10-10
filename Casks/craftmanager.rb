cask 'craftmanager' do
  version '1.0.72'
  sha256 '7bc36c8a5c23fd0fa667b8978c6cadf0091e1cd661e9b03933ed99b9910a8c89'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
