cask 'mattermost' do
  version '4.1.1'
  sha256 '4c903b8b3cf02dfd4051ffd3f025b3a15351d1c222362904d62cf4e4bf557a34'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: 'e72745f6bd0ab49717378c83da2954a879a4d3ee6dae17cc264d3f11b0eccb2b'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
