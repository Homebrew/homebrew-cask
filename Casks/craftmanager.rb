cask 'craftmanager' do
  version '1.0.92'
  sha256 'e66400329b60973ae05eb93f0b5663717b0525ed1210fa6a6563979751ff529e'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
