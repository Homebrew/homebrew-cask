cask 'feeds' do
  version '2.1.1'
  sha256 '098dc0ceec2ca1ef26e6ff9f3a7ab4fd7c71877a7fc698584c986525a2204fdf'

  # storage.googleapis.com/feeds-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/feeds-releases/Feeds-#{version}.zip"
  appcast 'https://storage.googleapis.com/feeds-releases/appcast.xml',
          checkpoint: '7af76d6014097647a2c5bf89bf8fc50019bd86c68c3eea60288eaf20c1a5c7f5'
  name 'Feeds'
  homepage 'http://www.feedsapp.com/'
  license :mit

  app 'Feeds.app'

  zap delete: [
                '~/Library/Caches/com.feedsapp.Feeds',
                '~/Library/Logs/Feeds',
                '~/Library/Preferences/com.feedsapp.Feeds.plist',
              ]
end
