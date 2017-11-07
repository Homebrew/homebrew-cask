cask 'flume' do
  version '2.8.1'
  sha256 '15a1ba98dff07a0b59316193bb6b3cd377f572d4c507883fd588c40053859857'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: '1389e67b1e47647f7bfe0f7dd25297b3a6442ff10dfd5dcd967ae0bfa9e6fa31'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
