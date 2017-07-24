cask 'mattermost' do
  version '3.7.0'
  sha256 '9d5c7a870b85dc162c5d761dee00532c78817d38cc2b11ba8038d3ca35ac2a83'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'cf4f4fa6b146283e79f00671d03436a610b973475bdf774a24a2f43e8128fc41'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
