cask 'craftmanager' do
  version '1.0.69'
  sha256 '1a8279aa0cd14450d729437c3a08efc610e8c3a7b341d23c84bfad859db8d3d9'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
