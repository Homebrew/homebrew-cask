cask 'roblox' do
  version '0.411.0.363394,a91076f95db04dcb'
  sha256 '7f3f0e9e1d9c2f320b752459ba9bbb6e3581503d855b6070fd21d6c6be34e075'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
