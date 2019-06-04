cask 'flume' do
  version '2.8.6.4'
  sha256 'c06851f830be93eaeca13c8f6beb88e90e8fe7095f68856188d50bffe00c4598'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
