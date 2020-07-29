cask 'craftmanager' do
  version '1.0.97'
  sha256 '27c5107eeb6e74e8e44c1f7d1c26c2d578dbaf22d1e37b01ac88a01d11d9afa7'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
