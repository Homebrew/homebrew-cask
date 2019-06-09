cask 'roblox' do
  version '1.2.0.307917,3e5f358137714073'
  sha256 'b89e6cef96d4a891729366d8774d4c386c7700a4da5ba969c3d4ea1b087fedf3'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
