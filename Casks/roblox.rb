cask 'roblox' do
  version '0.392.0.317745,454ee36c67ee47c7'
  sha256 'e75b408a8d0242876606852d483a39f6dd3153719085d520b49400af12ee2a43'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
