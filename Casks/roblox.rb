cask 'roblox' do
  version '0.399.0.334382,24faf6e02a924af1'
  sha256 '034738b4e9ae04e181bf46befa649a9dcd1e51e8bf1addfb6a57cd2caa4fcfd7'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
