cask 'roblox' do
  version '0.424.0.392804,cedbb8033698413e'
  sha256 'de7c1a2e976fc15f9ae93c4f076a886bb0efb35cc83a61d984c426115e8e5934'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
