cask 'flume' do
  version '2.8.6.5'
  sha256 '25b80175858387a19a3eedde2df3b25a5b28b420fdd9bad1a8b552a0a86320ea'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
