cask 'roblox' do
  version '0.425.0.394331,d0bce11daa3740b1'
  sha256 'bc5c5e63c635f14e21649981e9a8e9490a4fd5523d7ac3ea0215ab3cbbedfc83'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
