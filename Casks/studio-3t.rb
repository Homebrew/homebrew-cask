cask 'studio-3t' do
  version '2018.3.1'
  sha256 '370f14b2c8d77b2b6e06a697921222893b0ad3bb7cbe6e745ce103da8fcf1b27'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '6e0e6df8f67db431469799ffd6e7eeb8d27d02c0e5962b80d1b80b2cdc3bf5ef'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
