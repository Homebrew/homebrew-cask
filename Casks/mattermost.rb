cask 'mattermost' do
  version '4.5.2'
  sha256 'd3d3cacf9185d9887fb3460eb66b6fbce398c7a7d85b8cc058a7385f89639e38'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
