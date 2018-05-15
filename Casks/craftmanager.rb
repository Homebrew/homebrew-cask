cask 'craftmanager' do
  version '1.0.63'
  sha256 '7c42ad52c7d1023b4be9f0f7ddb2962d61edc43c432fba9a62a1af403d3d3d22'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'f084e8a95eb062fefa1853914570963066aaf645fbcb68ab4c0482e6add7e573'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
