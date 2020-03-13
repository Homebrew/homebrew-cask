cask 'roblox' do
  version '0.423.0.391560,182f34f20e5841a5'
  sha256 '8c96b736b42273f85daa26a46c751421bbd64e1d13c1ec24b877591ceb9e23da'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
