cask 'mattermost' do
  version '1.1.0'
  sha256 '9f97b131209bb2daad6cf55be0faa20a461d5644284e556e48d1ca0707aa93c6'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/mattermost/desktop/releases/download/v#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app "mattermost-desktop-#{version}-osx/Mattermost.app"
end
