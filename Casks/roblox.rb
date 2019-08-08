cask 'roblox' do
  version '0.396.0.327208,0ce8eb9947e2462f'
  sha256 '3302493de2c813f0bf6b6db53e2fad042787332b9858a970e2d162a6c76514b5'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
