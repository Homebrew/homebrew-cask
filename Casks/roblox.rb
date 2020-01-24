cask 'roblox' do
  version '0.416.0.375788,73c1de6658c54162'
  sha256 'fd269fa92f4c618017dd63fe4a5711a3c81324da6eb862a2dd3ce81c48eda981'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
