cask 'spacelauncher' do
  version '1.4.6'
  sha256 'b6fe6aed9712a61c931bb5fa05fe7c2d2da99d65a48b402781a9fe44cfe8b682'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: '7989ee373965a77232e260385ed83a87019008a20c6ca8454f1bd77acb17881e'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
