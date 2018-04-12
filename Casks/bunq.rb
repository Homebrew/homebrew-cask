cask 'bunq' do
  version '0.8.4'
  sha256 'cbc87ef6394a0370c47ed7ff3214c99ce63eda1a6920467078803c07fc8b4618'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '83d6c9a1f07091141b8f9a4c8c3b3937a3cead46bf998cd9dd9be0a07af8aac9'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
