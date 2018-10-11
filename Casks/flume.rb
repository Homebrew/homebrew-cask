cask 'flume' do
  version '2.8.5.3'
  sha256 '8d42df3e1c948bb4ff0a87857b7cb780d190bbff452319f21f84bc7c6b241d87'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
