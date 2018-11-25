cask 'bunqcommunity-bunq' do
  version '0.9.3'
  sha256 '13bae1a667156f98607f2f565aa1a43e1a818315830ada869a6fc3e3d2a60abe'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
