cask 'mattermost' do
  version '1.3.0'
  sha256 '8d772bc9cb309fe03d60e7cf6ec85696d85a6547382cd7ec27a3376a361f7e89'

  # releases.mattermost.com was verified as official when first introduced to the cask
  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '33863d7067db7385ca5d472a224d5cb4eedd44c0beb0a9a205d0d055363a0113'
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app 'mattermost-desktop-osx/Mattermost.app'
end
