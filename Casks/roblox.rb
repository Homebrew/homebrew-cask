cask 'roblox' do
  version '0.413.1.370526,f18dea65e9e04a26'
  sha256 '1600cbeb9ad083b1fea06464480eeda54b3cf6a16bea0b6bf2568b0aef32d115'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
