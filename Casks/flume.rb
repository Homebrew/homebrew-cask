cask 'flume' do
  version '2.8.5'
  sha256 '3890f8ff648e64999b2f4f1b03ce7e917be6593472bb5aa7f186d5b6c2e21d0b'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
