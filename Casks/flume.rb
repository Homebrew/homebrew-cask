cask 'flume' do
  version '2.8.6.1'
  sha256 '6f1ac9794577b1be17b326674bc1e70bb28336f07a50dec14158883fd18766ed'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
