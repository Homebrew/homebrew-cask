cask 'bunq' do
  version '0.8.2'
  sha256 '3d5c0f005507f0a952d4132a476125de88b8431f882e75881693b279c8bfc1b5'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '1404fae4a8daf3bcfb15eeaf32031c715dba2caceabbbdd4ee26b574e5272740'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
