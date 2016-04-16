cask 'mattermost' do
  version '1.1.1'
  sha256 'afc6cce8205466d93089b4ae183364a8fc76b2d36cb96017b248c7e750b7dd30'

  # github.com/mattermost/desktop was verified as official when first introduced to the cask
  url "https://github.com/mattermost/desktop/releases/download/v#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '1f48974001908cf0e7c934bbe95e3427581feff4fe261849cc4a015911894ef5'
  name 'Mattermost'
  homepage 'http://www.mattermost.org/'
  license :mit

  app "mattermost-desktop-#{version}-osx/Mattermost.app"
end
