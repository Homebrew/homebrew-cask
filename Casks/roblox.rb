cask 'roblox' do
  version '0.395.0.324413,149545f52f7d49a9'
  sha256 '2f595890efdca0d9092fbfcc0af69a96c2ebd4b617f3ae4502a8283f88d3a015'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
