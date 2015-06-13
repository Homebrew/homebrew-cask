cask :v1 => 'feeds' do
  version '2.0.5.1'
  sha256 'abc72e4ef77a0bef4ea89d62b570698d47b197f2d56b74a48a9f3da52c6cd71e'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/feeds-releases/Feeds-#{version}.zip"
  appcast 'https://storage.googleapis.com/feeds-releases/appcast.xml',
          :sha256 => '2c1c1e58c342c3975126181da367f8bbd342fc6586832ac5b0f4d84a0f17042c'
  name 'Feeds'
  homepage 'http://www.feedsapp.com/'
  license :mit

  app 'Feeds.app'

  zap :delete => [
    '~/Library/Caches/com.feedsapp.Feeds',
    '~/Library/Logs/Feeds',
    '~/Library/Preferences/com.feedsapp.Feeds.plist'
  ]
end
