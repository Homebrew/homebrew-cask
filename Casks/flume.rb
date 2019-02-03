cask 'flume' do
  version '2.8.6'
  sha256 '67d14f35fcbb60a6251dfa50e2065f0a9b78eee66767fdc0afdac982c7fc8eb3'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
