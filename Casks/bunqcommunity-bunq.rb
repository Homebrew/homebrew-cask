cask 'bunqcommunity-bunq' do
  version '0.9.5'
  sha256 'ac805046b6c46d3568c96921fcfd12a9e8d58f4b89554f49c46814423dab9143'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
