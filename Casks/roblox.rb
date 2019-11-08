cask 'roblox' do
  version '0.409.0.358284,09f82d10a713415f'
  sha256 'ac76935a98cb231aa19e1e77b3faff617197356ca9a3aec432c4a4123d55e763'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
