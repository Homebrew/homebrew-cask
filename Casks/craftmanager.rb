cask 'craftmanager' do
  version '1.0.84'
  sha256 '82cdff178d165ff66ac19e3d5cea52ee0186754b0a89a00f5d49fedf86d6f1a2'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
