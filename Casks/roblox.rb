cask 'roblox' do
  version '0.407.0.353595,510ae7995e4847a5'
  sha256 'acdf1f2d772c6783c95cb34bcacd088a6a3a60d403f64e9bf9cea53ed9d5d92b'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
