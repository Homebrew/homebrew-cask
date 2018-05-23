cask 'bunq' do
  version '0.8.7'
  sha256 'fd05370211d9d3ec56ef53b05208b6ab2f33b7d6776b8541a762b5461daaf3ef'

  # github.com/BunqCommunity/BunqDesktop was verified as official when first introduced to the cask
  url "https://github.com/BunqCommunity/BunqDesktop/releases/download/#{version}/BunqDesktop-#{version}.dmg"
  appcast 'https://github.com/BunqCommunity/BunqDesktop/releases.atom',
          checkpoint: '19cda8de2e5de705d033b2d66079191601e417a3db662dca699a016cd8c99fc5'
  name 'BunqDesktop'
  homepage 'https://bunqdesktop.com/'

  app 'BunqDesktop.app'
end
