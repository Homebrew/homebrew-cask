cask 'roblox' do
  version '0.408.0.355772,feb8dfd3f9b1479e'
  sha256 '698104e0bf7ae40cdf8bc71916c586b8851e9afadcf2ababeea98d3e626b9ad7'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
