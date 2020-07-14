cask 'mattermost' do
  version '4.5.1'
  sha256 '94481909fd1c573bd8ea0fac23dcbc721adff3f71c370c898bf8fc1475b6e7f3'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
