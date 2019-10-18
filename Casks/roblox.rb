cask 'roblox' do
  version '0.406.0.351423,c9625b3036514c13'
  sha256 '3f1d84114d0c819d1587426ad44079682efdecfe91bcec6c2b2dfc083020e090'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
