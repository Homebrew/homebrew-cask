cask 'flume' do
  version '2.8.6.2'
  sha256 '4b5867aa21a47a41ef5b23cc47d89f819c01b382dfc035ef17c75fc9c015c32b'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
