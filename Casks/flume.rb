cask 'flume' do
  version '2.8.4'
  sha256 '8f2bdd73981120c62d192979343dba8893a8bec2287c114baccb18c87d08d68d'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: '404c736f25531a4dd502f5c923a9d9c02e3382ce10594b70458a8e0e3f44d800'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
