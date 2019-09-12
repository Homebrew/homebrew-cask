cask 'roblox' do
  version '0.401.0.338533,adb7353371d94e03'
  sha256 '01380304e6e740d1cec18d4eb5a2dd5ee4f4e5529bc765bd9b16a27f03b45b2d'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
