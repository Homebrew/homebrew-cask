cask 'flume' do
  version '2.8.5.2'
  sha256 'b33ed6d96467f2ccb4ddf212a6ddffb5846627e8ff6335ccb7a5055483977395'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
