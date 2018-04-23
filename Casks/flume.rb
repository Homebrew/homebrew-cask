cask 'flume' do
  version '2.8.4.1'
  sha256 '1acfbf630460e503b3fbf185fe2f16ed10ea2c545e8d4d5174babf1eb1163a4d'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: '95026988ac0895ce1f35861640342a8adaaf0a1db10b9e71aa23b54d3edf6671'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
