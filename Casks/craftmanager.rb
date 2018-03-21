cask 'craftmanager' do
  version '1.0.55'
  sha256 '02e888ecc4fd12d28cde152e15b560fbdfc060331e4547f15e0c79eb14606ecc'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'cd7b2512579bd6ef3d4d990ec103144ef275b40b5d9a86be1ae4c486d6e9634b'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
