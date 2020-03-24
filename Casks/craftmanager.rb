cask 'craftmanager' do
  version '1.0.93'
  sha256 '2258fe318d934d0388dab969ba177e211b33af9d870de7db719948fa21834366'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
