cask 'mattermost' do
  version '4.4.1'
  sha256 'd1b9f80f8c21ae4cdc5e52697ce49b3a7eedb33896ee2d9fdd5567b69bbff8e6'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
