cask 'roblox' do
  version '7363baf595af432d'
  sha256 '240db438fe8b92a63131b63e61ce471757aa8c9d4b5a4b718420a9c3d7b9b829'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version}-Roblox.dmg"
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
