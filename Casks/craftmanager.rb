cask 'craftmanager' do
  version '1.0.82'
  sha256 '9abbc68baa8c47c0ae813ef56d622b034504d7d53eab2f97b9bdf29c89d8728c'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
