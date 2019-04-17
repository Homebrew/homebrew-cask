cask 'flume' do
  version '2.8.6.3'
  sha256 'dea76634a76b808add5a96fc7710f130eba306544c9c2cf22676bc11489ccdd5'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
