cask 'mattermost' do
  version '4.4.0'
  sha256 'd66a567eda191d35db89d098b564d65d5629f08269a9c0584363df813639b2a6'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
