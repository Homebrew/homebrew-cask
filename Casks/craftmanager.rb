cask 'craftmanager' do
  version '1.0.52'
  sha256 '404d2500c59e22346d611e281c19380961bc5fcbc1dae30aa38c3938b52f5966'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '37079ae0bead1704e4418f4966b0dc606295a95fffb4337a1bc1ad554e021016'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
