cask 'bunqcommunity-bunq' do
  version '0.9.0'
  sha256 '200479ac81f4944f71c8fb10491ed258672716749aaf9d9665bedb963092f0ba'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
