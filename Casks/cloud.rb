cask :v1 => 'cloud' do
  version '3.2.0'
  sha256 '713c8eeb91506661af97cf31f07ea4a31e65a773579fe51ef5194f775df748a7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  name 'CloudApp'
  homepage 'http://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap :delete => '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end
