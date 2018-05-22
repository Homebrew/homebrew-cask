cask 'craftmanager' do
  version '1.0.64'
  sha256 'bd93510618925ac78a3c954cb85df796d106771969218502d73b84a8efc241f3'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '5c4bd623182bc64302a316837e98425a8d4c4e40f0447331f8a2120f7d0a667d'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
