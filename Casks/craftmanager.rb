cask 'craftmanager' do
  version '1.0.62'
  sha256 'baa7ac585bb6e1394396b0525547ba8993aa0be17728ac23d3e39b3458f5465b'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'd3d2d070069ff097aa8ec44eeedffb87f93f20ed0e7c66a0a287887cfedecda7'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
