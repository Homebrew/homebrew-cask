cask 'bunqcommunity-bunq' do
  version '0.9.1'
  sha256 'f04cc0d1610ba462bb27f73ec2073c506777ffbfdbf8365bd26c1c5d6aed9bc7'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
