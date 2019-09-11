cask 'roblox' do
  version '0.400.0.336387,226c76bd00be46a2'
  sha256 'f47d318aa6f500a792ef573a47ffa6bd47c1d8070f1bf9f990ee19267386e6d0'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
