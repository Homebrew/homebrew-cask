cask 'craftmanager' do
  version '1.0.78'
  sha256 '2f4b44031accf968ee923b86a6aa91af71b2f921c5eb653f77ce2eff4f008d15'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
