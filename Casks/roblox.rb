cask 'roblox' do
  version '0.414.0.371885,c4dcd23e9fbc4ba9'
  sha256 '533ddbd7b332e7baf1f9315cc2b1d3109f10bcd5584e1d537fcddc8e0470b411'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
