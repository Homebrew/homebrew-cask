cask :v1 => 'cloud' do
  version '3.3.0'
  sha256 'd2a0dc3a2ecff33b18e1d98d2e51db2f9a63ee6ec795ba862346a718dd8bc41d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
