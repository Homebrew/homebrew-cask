cask 'roblox' do
  version '0.417.0.376966,41e5c44790994dc6'
  sha256 'f03a0e881213c1145ee1a3cc7c24017eee5e13109c5273e816b89c2478eb759f'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
