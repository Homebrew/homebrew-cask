cask 'bunqcommunity-bunq' do
  version '0.9.4'
  sha256 '2919109b1364f292bf213e6a6720d758a2ee1bb84cb37100bcaf39fb33799d98'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
