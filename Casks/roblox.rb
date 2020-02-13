cask 'roblox' do
  version '0.419.0.381237,5e5e1d7340644918'
  sha256 '782729f4a9c19c754fde2e027ae0ce2e3fc46bde1e6b86dc916d756ee468c50e'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
