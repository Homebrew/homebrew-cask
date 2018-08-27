cask 'flume' do
  version '2.8.5.1'
  sha256 '1f57c9a6fd64829a362af3975c024df783d69a4119a66b4fb2dcbed10a558196'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
