cask 'craftmanager' do
  version '1.0.46'
  sha256 '7226a3f8a2b67651b4027943083118f8cca1b0174ba1856286e151f667220235'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '6adba8cbcf08d5e86e908e024d9bc3e3a35cda34798e1454efe15f50e16b428c'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
