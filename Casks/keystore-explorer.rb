cask 'keystore-explorer' do
  version '5.3.2'
  sha256 'd06c1300dea98c1188b0ffb34cac6653bd3e08048f860f56f51e142fea9aaced'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom',
          checkpoint: '9b91815d3deb31a4e834bd482ab8bb3446e5d1d59c91c6c6ef948b9bd9a2e64c'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
