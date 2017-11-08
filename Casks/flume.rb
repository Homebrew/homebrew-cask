cask 'flume' do
  version '2.8.2'
  sha256 'fcaf509db286979a713c73d23755b2f9927f23e108383fda2738d61ea60cadee'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: 'b05bf16264e66bfe94cd090d515f74015eed0243cd3d0a0a8e6c463fd0df60ca'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
