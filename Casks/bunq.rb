cask 'bunq' do
  version '0.8.11'
  sha256 'ff461b377e5b6acd9bffd86e2c8367eb3ec2e1e6734c8a64f58ef4b8aed3eb05'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
