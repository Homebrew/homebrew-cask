cask 'roblox' do
  version '0.404.0.346082,ea4586fe68654280'
  sha256 'fe4bd80468b150264c1631510daf46eddddc8916a76c759ffad5f781d3b28a8e'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
