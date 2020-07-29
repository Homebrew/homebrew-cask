cask 'craftmanager' do
  version '1.0.96'
  sha256 'a8b2ddb4bf7f5ebeb0b67a7a57ced282d32d4c7ced9a33cab209788937f0bfbc'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
