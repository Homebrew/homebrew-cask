cask 'spacelauncher' do
  version '1.0.2'
  sha256 'cda767f28b39f3590d94a0a1266f54694d932f37de34bfc9cdd2a002e9eadff4'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: '18a42d05d1659eb4638491c2d9e4f99cbf7bac61aeb18bcab136164ed5f408f6'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
