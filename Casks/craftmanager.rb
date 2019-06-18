cask 'craftmanager' do
  version '1.0.83'
  sha256 'd2791b040554ca27a88edc048ae8e67f6a69388094a2bac7c3677bd88cb1a6e7'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
