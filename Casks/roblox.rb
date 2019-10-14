cask 'roblox' do
  version '0.405.0.348052,5236228c56b848cc'
  sha256 '2df0c41bbfdc08f0fc4ee75d7466588e435e76a9c11fd3c2ff794af2526dfa79'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
