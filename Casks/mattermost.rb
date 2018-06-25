cask 'mattermost' do
  version '4.1.2'
  sha256 '1320be7402b330bbccf6fbac5eecadedb4c92b420743c6d8548534a636b335e8'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
