cask 'spacelauncher' do
  version '1.4.8'
  sha256 '7ba4b2add0f1594b0f02889c8f8069cfd1ccc76dddf600d352f9c2cf890f4f00'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: 'b7e84532b65b66bc4366b26b1d87c859ef36e6b20dd9300b34f44e0aacb32dc7'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
