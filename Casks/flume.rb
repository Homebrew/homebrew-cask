cask 'flume' do
  version '2.8.3'
  sha256 'f5b07c5e4155a12cb099e2e39b4f08da09e599bcccf8567bfad6d40b2266435b'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: '7ead805aef0221f3ca99bd3dfe893c7165b42f8ba22e08cc3635170dcc6e71bc'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
