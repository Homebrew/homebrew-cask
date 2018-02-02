cask 'craftmanager' do
  version '1.0.47'
  sha256 'cf63fdf37a3bb75fc77a66cce56b9a36693b3dbbc3ca66d6a769f5fd63ba657d'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '0ec9c24b9d33602272046b77132c2d7c2bf83f2448e95dba0b9e9e9b72bfbc46'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
