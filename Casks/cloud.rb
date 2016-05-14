cask 'cloud' do
  version '3.10.1'
  sha256 'adebf9e6c12595d561f5f9c8e6514c157530b6cb0f073850828b984807718ff0'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: '3b2f119a0b71a8b308538d56be315e52cf7c78690a072b97caaba17011a29dc5'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
