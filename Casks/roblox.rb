cask 'roblox' do
  version '0.422.0.388145,5a33b28026914549'
  sha256 'aca41c4d937e155596bf4fe3fe4cc400e96767d8be25afee0f7f09066eec58c5'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
