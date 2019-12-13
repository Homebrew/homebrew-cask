cask 'roblox' do
  version '0.413.0.368698,f0540a69a8944218'
  sha256 '2ab847fe430001f757c71a8628473423e54840cb1bfa347d06a04cef670c1691'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
