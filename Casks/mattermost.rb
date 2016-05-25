cask 'mattermost' do
  version '1.2.1'
  sha256 '42aa61067bc0a3cbab3ee5e4ab8ecbd7c4c5e22b42a494c31b23dfcbf562abe9'

  # github.com/mattermost/desktop was verified as official when first introduced to the cask
  url "https://github.com/mattermost/desktop/releases/download/v#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'd1634fe4476a496b2a93f98bb075e5d5ef20b0433aab6e985fc404cc3c41722d'
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app "mattermost-desktop-#{version}-osx/Mattermost.app"
end
