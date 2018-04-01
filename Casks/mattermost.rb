cask 'mattermost' do
  version '4.0.0'
  sha256 '94a21bfe4932ef7f55c1386e16a98de079653297129bbabcf6092b780e68ddd2'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '9caa98f39e36318ebdb2ce47e1de2e254adc61cac78644d5ddfe9ca4ef3c7dfe'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
