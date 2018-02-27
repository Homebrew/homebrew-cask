cask 'craftmanager' do
  version '1.0.50'
  sha256 '8026fdf18422b99db7363daff5f5c8e70619605f0538556550595e931ad432cf'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '628f0a91a0399765dfc28bd81d383cabb4089fbcbedf0a9b70508c274dfd0ff2'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
