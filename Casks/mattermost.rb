cask 'mattermost' do
  version '3.7.1'
  sha256 '348c9321ee81114794d098998490a64f99b511497cd6b95454420685301e115a'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'c6603f09018f6b6aed410862479a67886be33e32f00ac331da6e9e2105e35858'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
