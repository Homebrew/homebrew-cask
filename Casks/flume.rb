cask 'flume' do
  version '2.8'
  sha256 '348888606a8356a1d1644564ea55adc4289fea29818b26f584e4bc172b75cc5b'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: '2c243d37571ce93562a815c28e993a840031b33f698253e1e04e7915c4ff8b9f'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
