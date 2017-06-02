cask 'spacelauncher' do
  version '1.3'
  sha256 '415b54074155845563bb5d72a636dca0acc2f631d6e12842f8f6dcba1995a73e'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: '0b2ae8e0e9978c3e1565c10b1f0d0ad79e727d107844b7a7670ad79194e216fc'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
