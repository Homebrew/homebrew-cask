cask 'mattermost' do
  version '1.2.1'
  sha256 '42aa61067bc0a3cbab3ee5e4ab8ecbd7c4c5e22b42a494c31b23dfcbf562abe9'

  # releases.mattermost.com was verified as official when first introduced to the cask
  url "https://github.com/mattermost/desktop/releases/download/v#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '33863d7067db7385ca5d472a224d5cb4eedd44c0beb0a9a205d0d055363a0113'
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app 'mattermost-desktop-osx/Mattermost.app'
end
