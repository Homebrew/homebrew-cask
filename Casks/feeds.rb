cask 'feeds' do
  version '2.1.2'
  sha256 'a9b1476dae52fef2abc9f8427c106412ca726b873c469ae23553818660eb7fdc'

  # storage.googleapis.com/feeds-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/feeds-releases/Feeds-#{version}.zip"
  appcast 'https://storage.googleapis.com/feeds-releases/appcast.xml',
          checkpoint: '4450c36d30006bb4b85fa047d9062a3ce22d3d170824eea73db3db01acb0a880'
  name 'Feeds'
  homepage 'http://www.feedsapp.com/'

  app 'Feeds.app'

  zap delete: [
                '~/Library/Caches/com.feedsapp.Feeds',
                '~/Library/Logs/Feeds',
                '~/Library/Preferences/com.feedsapp.Feeds.plist',
              ]
end
