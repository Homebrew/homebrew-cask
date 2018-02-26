cask 'craftmanager' do
  version '1.0.49'
  sha256 '0328b91f11d6fdf6740bd115b96c022006a1045e6aad5e33ac45da4aadfa95c0'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'ffe9b46881fd1eb79816cccc80dfda1cd012b5c8d496cae3f5b3800b2d7c0993'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
