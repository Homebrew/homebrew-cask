cask 'roblox' do
  version '0.397.0.329146,f5c2fbb4aff5434e'
  sha256 '2ae155a7cc324ad8a422473e3b2947af9b8127ea59b974e89c8875d7174c603d'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
