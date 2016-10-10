cask 'mattermost' do
  version '3.4.0'
  sha256 '612335b46c4e0ffa655f70217e5cd0ba00227645ad2e85841831b4780e3e35b7'

  # releases.mattermost.com was verified as official when first introduced to the cask
  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'c5e741ba52c803e8f88d341dad0d2b544b3aad863d14b4e2eb240e8800099c34'
  name 'Mattermost'
  homepage 'https://www.mattermost.org/'

  app 'mattermost-desktop-osx/Mattermost.app'
end
