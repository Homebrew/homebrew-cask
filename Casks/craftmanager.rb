cask 'craftmanager' do
  version :latest
  sha256 :no_check

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
