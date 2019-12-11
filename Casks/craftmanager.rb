cask 'craftmanager' do
  version '1.0.91'
  sha256 '3e6af3314f592e42939f961e7b96870d4cee6126ab6f19f10a3eaf9d685dd01c'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
