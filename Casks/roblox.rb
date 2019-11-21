cask 'roblox' do
  version '0.410.0.360448,21964160f92c49c4'
  sha256 'd3f834a3c52ea3751f20700f963b9e1321cd11e38544a3a792c621cc6bfbd64c'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
