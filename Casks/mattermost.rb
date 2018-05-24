cask 'mattermost' do
  version '4.1.2'
  sha256 '1320be7402b330bbccf6fbac5eecadedb4c92b420743c6d8548534a636b335e8'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '1a88388db996d54186f654b76353410bf5cf9a6c0e5b53df9cc757d9701d52e4'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
