cask 'bunq' do
  version '0.8.5'
  sha256 'b0d2a326332ff999d8613af8c4d13fe0e85098fae21d1b7975cf70ff3d12d42b'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '1bde93a8405cfb996054e0eecf970a36b15f94aec5af64a57845962eac38fa56'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
