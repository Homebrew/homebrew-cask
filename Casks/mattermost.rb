cask 'mattermost' do
  version '3.7.1'
  sha256 '348c9321ee81114794d098998490a64f99b511497cd6b95454420685301e115a'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '547ac8a75d459980ae21a9fbd2de8188a04b9c6aefc6a6d987435a182f51dbf5'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
