cask 'craftmanager' do
  version '1.0.45'
  sha256 'd226dfe4769b3fdddf2db0aa365f0dbe4791503be2ddb0e1d294d80213562e39'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '8128d744564c0cc7db6f034f76cbe60ef7da1e302467abd9fba5b3ef9590f95e'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
