cask 'roblox' do
  version '0.394.0.322464,9c9e3266c5e94c13'
  sha256 'abcaf38dcce968505d26900dfb3f6c3f50286998313a75e9f8621637dc829254'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
