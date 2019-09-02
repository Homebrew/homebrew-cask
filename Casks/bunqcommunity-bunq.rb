cask 'bunqcommunity-bunq' do
  version '0.9.8'
  sha256 '56657ae45e478cf21e5f94c7081fb48541516e6d8e9b5a15467782d22b36f60b'

  # github.com/bunqCommunity/bunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast 'https://github.com/bunqCommunity/bunqDesktop/releases.atom'
  name 'bunqDesktop'
  homepage 'https://bunqdesk.top/'

  app 'bunqDesktop.app'
end
