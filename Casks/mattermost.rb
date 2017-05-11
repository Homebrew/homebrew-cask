cask 'mattermost' do
  version '3.7.0'
  sha256 '9d5c7a870b85dc162c5d761dee00532c78817d38cc2b11ba8038d3ca35ac2a83'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '0e0178d773dc7bc8b499d97251a57a4646f8e8f1491c1791d09db171be0743a0'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
