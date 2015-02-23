cask :v1 => 'cloud' do
  version '3.2.0'
  sha256 '1e1868f61790c07e83480fe2d6b5e54efd1bb5a5'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  name 'CloudApp'
  homepage 'http://getcloudapp.com/'
  license: gratis

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
