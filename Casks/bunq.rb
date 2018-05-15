cask 'bunq' do
  version '0.8.6'
  sha256 '9bd7511f78a8a071f00e07d18c75351677724521805bcf5d6e5bb303a6c01dad'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '760a1b5a209b965821750e59b263519ecb247a601dc9e11ad7be6028a0da2883'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
