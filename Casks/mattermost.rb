cask 'mattermost' do
  version '1.2.0'
  sha256 '9e07f5766080de5dc2ab37becab0982b890ac12649e70dc84e556fb1ff3cb756'

  # github.com/mattermost/desktop was verified as official when first introduced to the cask
  url "https://github.com/mattermost/desktop/releases/download/v#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'dfc0e08371a037c89b49efa57558b9cb0430a27dde34cb10da0976435ebce178'
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app "mattermost-desktop-#{version}-osx/Mattermost.app"
end
