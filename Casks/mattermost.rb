cask 'mattermost' do
  version '4.2.2'
  sha256 'a04d09fa0e5f9e23d1c4c07e9007a911319bbaa54c1e234c2e8c9eed60dfd18c'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
