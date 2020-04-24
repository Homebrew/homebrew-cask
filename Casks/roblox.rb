cask 'roblox' do
  version '0.429.0.403819,75c3a69b92e24a12'
  sha256 'c41d85c1e1178dfd53c12290cfa502ff8dac01b19812cd6675e48dc3ac580abb'

  # setup.rbxcdn.com/ was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
