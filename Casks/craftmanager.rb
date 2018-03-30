cask 'craftmanager' do
  version '1.0.57'
  sha256 'dfe55db094d84edaf816664328052f7d3a7e8fa9051c142cf3fa14e1e8d09c8a'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '425e43367676ef5e336e830d974b3ccb3da621f4458033ed8f03ceaf4e2dfc45'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
