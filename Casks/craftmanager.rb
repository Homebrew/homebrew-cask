cask 'craftmanager' do
  version '1.0.95'
  sha256 '1c344ad42a98f291f587856ffb954cb7afa84c9e5152e84f96361447721cac01'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
