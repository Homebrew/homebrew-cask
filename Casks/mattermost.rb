cask 'mattermost' do
  version '3.6.0'
  sha256 '2422c261242106055534d9ee5689131a698351480a3b24d612178994fe44d988'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '2b457d45458875bc53e941d74040dec76a298d34be9e2ec33d35115f487672a4'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
