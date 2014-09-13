class Cloud < Cask
  version '3.0.0'
  sha256 'b46f65037f38a6cc8c4291315682524dae9e9671a294fa96fc42d8e033fcfca9'

  url 'https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-3.0.0.zip'
  homepage 'http://getcloudapp.com/'

  app 'Cloud.app'
  zap :files => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
