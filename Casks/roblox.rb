cask 'roblox' do
  version '0.398.0.332127,ff4d11837ace45ef'
  sha256 '79b4fd65d16b49ac6373b8b9ddb4e1f0b3b754fb7584196277f09c8287c1a18f'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
