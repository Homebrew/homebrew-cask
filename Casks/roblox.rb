cask 'roblox' do
  version '1.2.0.311600,181cd20922f04e75'
  sha256 '36901a7b8aba4e65da015256a29c5093354b4272b3f3d0fb6df3f55f3b3d6579'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
