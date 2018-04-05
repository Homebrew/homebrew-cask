cask 'bunq' do
  version '0.8.1'
  sha256 '15c6e2ccfcef741bf7fb839ad95ca8a8f514673dfdc8e09460cdf87830c28f74'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '044987e7d179701e08a5c6fbdce5741ac3b1d3ca8ddaf22d74536ed2e0bbdd23'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
