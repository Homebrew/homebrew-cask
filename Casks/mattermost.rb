cask 'mattermost' do
  version '3.4.1'
  sha256 'f34bfaa88901cecbea1a1fa5df97ce842b1f188f6e0083fcf63c0d1aef376006'

  # releases.mattermost.com was verified as official when first introduced to the cask
  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '83fffe005c17ee483f8e297417c0166a075b26145fbf01466de6a04d5571ea48'
  name 'Mattermost'
  homepage 'https://about.mattermost.org/'

  app 'mattermost-desktop-osx/Mattermost.app'
end
