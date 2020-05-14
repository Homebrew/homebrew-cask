cask 'mattermost' do
  version '4.4.2'
  sha256 '90b70d659b39097fc49bb67fc323ec95b18c62229a6978c4b4f9a2328b6c8e84'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
