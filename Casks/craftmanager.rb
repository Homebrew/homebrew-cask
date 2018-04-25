cask 'craftmanager' do
  version '1.0.60'
  sha256 '95897b64f80efcf84cf1319fc3f4736f16ec73aeeb997ad6f89dba1d04d38ef1'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: 'c378c8754a006f4a7447b3ab81ce12da8cdea0da343dc08683507a76f3f47cb7'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
