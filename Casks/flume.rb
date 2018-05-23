cask 'flume' do
  version '2.8.4.2'
  sha256 '4ac0cc955f2ee70e4b4251a800a17c129795b1ff1e95d6c7d7a6606e2f55ceab'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: 'cac2bcae82830ce90509e2948c45c2daea804132a699ef2f692c151b926c6f52'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
