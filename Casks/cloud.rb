cask :v1 => 'cloud' do
  version '3.5.3'
  sha256 '5fd6e0e5e1a4c9d37150acda5df40cc35ef29fb75f20073c213c52e2647cd9f4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
