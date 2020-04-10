cask 'roblox' do
  version '0.427.0.399257,0767e306e65f44b9'
  sha256 '17b318bf95bc6390ab721f79e15626e9942dab240c8e5eb153f3e8b42271bd17'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
