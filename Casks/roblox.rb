cask 'roblox' do
  version '0.391.0.313677,4094770ca34f4ff0'
  sha256 'a623f13d4ce33bce3a9124ea574dceae0d69c5f19f9992bd16b82cc51ccf20b5'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
