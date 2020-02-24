cask 'bunqcommunity-bunq' do
  version '0.9.9'
  sha256 'c2d39b4b212ba0036a65f6d6077add3d9d152e9cd13d9af1cb7b6ab149a94dcc'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
