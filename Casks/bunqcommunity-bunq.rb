cask 'bunqcommunity-bunq' do
  version '0.9.2'
  sha256 '16527ed53e6783375162978d936ab1f36dd0999892a1e1c6fe4ac49e41a295a1'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
