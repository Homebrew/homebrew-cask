cask 'roblox' do
  version '0.412.0.365788,3383b43641344761'
  sha256 '8e3a9ea94365f4b3f176150958973f860973fb5ddc5d417006de7bf1cfb2c4da'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
