cask 'bunq' do
  version '0.8.8'
  sha256 'ead282358216174dcf4b4bc0c55f7611d2f3075a2384e894d378c5f105beaa4e'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: 'e0759b46386f243ab7f76668bd709dc76a628cfbb1c4af673089e2cd7bff9d95'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
