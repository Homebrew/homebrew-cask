cask 'roblox' do
  version '0.428.1.402190,0431769d5ca845e7'
  sha256 'f0e1b9009fa3ead9bd046ca597f7a18b0298182a82c4b1807958a6274792729e'

  # setup.rbxcdn.com/ was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
