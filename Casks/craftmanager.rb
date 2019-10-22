cask 'craftmanager' do
  version '1.0.89'
  sha256 'ca4ae7658fab74716ee8e3448c8c2b265701f270caa69ffacc389aa2714094c8'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
