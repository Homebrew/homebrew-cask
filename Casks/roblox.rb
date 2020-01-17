cask 'roblox' do
  version '0.415.0.373700,a676fd6930bd4ab3'
  sha256 '1922cf74a315e74bfbc6966dfeaadd6a4529666ee665903a540a198bcabbb2b9'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
