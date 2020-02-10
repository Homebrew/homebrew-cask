cask 'roblox' do
  version '0.418.2.380903,69a804bc2d2f48c5'
  sha256 '99dc8b470fa1938d5002a49ee213800f8a40c1b5c3529d7228ca817ae0da042b'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
