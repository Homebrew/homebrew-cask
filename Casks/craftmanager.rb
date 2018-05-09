cask 'craftmanager' do
  version '1.0.61'
  sha256 '7e2f19e7e849de221a41364b4495abb8e10575b050fa7a00a251614a95661a91'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '3cf0ee55fc63a674e759a6cb7596ec35d324f68e9dfbf5a062a33e0194647777'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
