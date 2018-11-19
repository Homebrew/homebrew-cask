cask 'craftmanager' do
  version '1.0.73'
  sha256 '825294651f9a52ec708194f7c6d5c3372cdbbcb5e3ea57f6e4d75582b04d9b0a'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
