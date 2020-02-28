cask 'roblox' do
  version '0.421.0.385673,278cee1b313a457a'
  sha256 'bfcf02216011eea03de311199d118f0f4e6e398d7532b556e4870c39fe1addaf'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
