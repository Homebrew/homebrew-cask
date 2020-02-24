cask 'roblox' do
  version '0.420.0.383960,9fb42da157684099'
  sha256 'bc066efdac8300cdb2c66d2351b238ed0f0de15f4c6d559f08808db0b5718005'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
