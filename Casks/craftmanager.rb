cask 'craftmanager' do
  version '1.0.66'
  sha256 '3640be67ecccff821cde6525d5fb9187d63a1a597ebdb66a0d1f411726a3ce0a'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
