cask 'craftmanager' do
  version '1.0.90'
  sha256 '691ed06ded6a5597450feb2fbb24c9263ec2aa7d898f73678e3a11624a8c882e'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
