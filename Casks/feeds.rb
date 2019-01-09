cask 'feeds' do
  version '2.1.2'
  sha256 'a9b1476dae52fef2abc9f8427c106412ca726b873c469ae23553818660eb7fdc'

  # storage.googleapis.com/feeds-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/feeds-releases/Feeds-#{version}.zip"
  appcast 'https://storage.googleapis.com/feeds-releases/appcast.xml'
  name 'Feeds'
  homepage 'http://www.feedsapp.com/'

  app 'Feeds.app'

  zap trash: [
               '~/Library/Caches/com.feedsapp.Feeds',
               '~/Library/Logs/Feeds',
               '~/Library/Preferences/com.feedsapp.Feeds.plist',
             ]
end
