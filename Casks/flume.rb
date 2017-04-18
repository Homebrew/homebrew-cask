cask 'flume' do
  version '2.6'
  sha256 '92eb0180efca10d39420bb74856d3c743af9bea3dabc46dd80b25221127838ef'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '5a30ef3b0be22eeb3f047ab72e997643a2e9b23f63b54ad409618c056b2d3efc'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap delete: '~/Library/Application Support/Flume'
end
