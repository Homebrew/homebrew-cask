cask 'craftmanager' do
  version '1.0.48'
  sha256 '718eb692962db70df589b3888906e075c0c5a5d1d69ed42710e7fcfb5706866b'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '3550d48e7ae3f897ad3fd44b6c20d77c7baaee7f0dba0d8527a608b08c97a58e'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
