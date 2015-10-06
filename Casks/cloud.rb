cask :v1 => 'cloud' do
  version '3.6.1'
  sha256 '8a877c5503d5c390d01c029c1f8a2e8510455b9871da738ac957c6821cc1bdb4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
