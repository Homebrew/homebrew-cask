cask 'roblox' do
  version '0.403.2.345412,505d37d76b384a31'
  sha256 '904cc09ca717182917400a4bcc7b591d886bf8e8efbf1f8e3996bc926c0708b0'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
