cask 'flume' do
  version '2.8.6'
  sha256 '736a1960f7e2382dbb6fcadb0146150363a80f7a8b6e8ce1ad981f31f45fdf20'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
