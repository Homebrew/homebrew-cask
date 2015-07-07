cask :v1 => 'feeds' do
  version '2.1.1'
  sha256 '098dc0ceec2ca1ef26e6ff9f3a7ab4fd7c71877a7fc698584c986525a2204fdf'

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
