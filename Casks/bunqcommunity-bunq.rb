cask 'bunqcommunity-bunq' do
  version '0.9.6'
  sha256 '2438f7ff240c3403b9822f73df7e28cd2161bae99ff2f3d19b98c4572fdd4275'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
