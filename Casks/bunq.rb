cask 'bunq' do
  version '0.8.9'
  sha256 'aaac0bf9b15a640e8e958b26417f7332dcf4fc49696a0a9a93787797f39341db'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: 'c45ad1a1b84662c96fa0ee9bd7aa6f01fca6b26ee51e89be4e91dff04619d4c2'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
