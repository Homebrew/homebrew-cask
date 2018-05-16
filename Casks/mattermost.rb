cask 'mattermost' do
  version '4.1.0'
  sha256 '95240f613d3922f25300c796201eb1eb5385a95c5b1dcc8642e818f811896462'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '4456fcf44a4bf3c5b8a44188a24b8bf2d01f7a34207de36bcfa319577f0106fa'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
