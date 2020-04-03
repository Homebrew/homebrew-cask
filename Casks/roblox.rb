cask 'roblox' do
  version '0.426.0.397338,d18bc94b3a0943fc'
  sha256 '237c7b99cdda407dedc88fd3320c27d048428b13e731559af5067f6b29763c3c'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
