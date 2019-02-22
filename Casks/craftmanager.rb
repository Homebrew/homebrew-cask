cask 'craftmanager' do
  version '1.0.76'
  sha256 '8a5f7d6f39f34f44ca93054b11213203920f7a0d6e01b8a30fe77502d54f2d6e'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
