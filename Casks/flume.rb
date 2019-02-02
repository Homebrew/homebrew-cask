cask 'flume' do
  version '2.8.6'
  sha256 '817a843a82c1ede234fb7ff147fee00bcd713b095951aea9395dc1aa61d7cd30'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
