cask 'spacelauncher' do
  version '1.3.7'
  sha256 '86db8cfc72adf4e20997476e6fee05fe4292383acf1340625d0149219d5e32c3'

  url 'https://spacelauncherapp.com/download/SpaceLauncher.zip'
  appcast 'https://spacelauncherapp.com/download/appcast.xml',
          checkpoint: 'a262d584b7e34ce9355a33e3252e8d2ebf17f491cd9a706c6d31c06b563114e4'
  name 'SpaceLauncher'
  homepage 'https://spacelauncherapp.com/'

  app 'SpaceLauncher.app'
end
