cask 'jet' do
  version '2.5.1'
  sha256 '80d4112145b3e8b3414a060d46f6cacbf6bbc29983468b0e89145cb5d00cbe68'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  appcast 'https://documentation.codeship.com/pro/jet-cli/release-notes/',
          checkpoint: '3e0de3787f279faf7c26373af09b3f75b270e059ddfe93a75fb4490d0ae4ac7b'
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/builds-and-configuration/cli/'

  binary 'jet'
end
