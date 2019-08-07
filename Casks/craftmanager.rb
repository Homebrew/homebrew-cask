cask 'craftmanager' do
  version '1.0.85'
  sha256 '910acd6ee8a2caa121c26b03c6c3b9221901ea1860f01542d2c3c0688ce72f53'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
