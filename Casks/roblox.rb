cask 'roblox' do
  version '1.2.0.265265,14d81515193c4606'
  sha256 '3f5c1e1613e7348938f02df94c48a12cc6ce6c15722cf0f630869b4954995238'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
