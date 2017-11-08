cask 'flume' do
  version '2.8.2'
  sha256 '8fee477756acca8abdb2fb615d22d05ddaf812b993aca5c29fa9ab2e39109147'

  url "https://flumeapp.com/files/Flume-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c88c56b02dcd4dd3acceb6d7a24f7122',
          checkpoint: 'a5e5d44a7bf0bd72a1474088dc89fef61e51b95f290aab0706d8c788a02924a1'
  name 'Flume'
  homepage 'https://flumeapp.com/'

  auto_updates true

  app 'Flume.app'

  zap trash: '~/Library/Application Support/Flume'
end
