cask 'spacelauncher' do
  version '1.4.13'
  sha256 '87f22cf99faad6b7ce06aeb8fc94e3a8410e6bc01a52187c4beb5a182e48e296'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: '3361f09e555399a6a45d4915214abdcda1594781528b8926bd341b3487ab1a00'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
