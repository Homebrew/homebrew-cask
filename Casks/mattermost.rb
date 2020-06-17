cask 'mattermost' do
  version '4.5.0'
  sha256 '7eab329c6244b9cf37686730222129b98ed6c1cb8197668c2a124acad13313a9'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
