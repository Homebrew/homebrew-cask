cask 'roblox' do
  version '0.393.0.319623,abb55c6609004bfa'
  sha256 '14a1fbe7808e2b965e8e639aa7598af72da75237b6e23aa80ccc0667f33d41fa'

  # setup.rbxcdn.com was verified as official when first introduced to the cask
  url "https://setup.rbxcdn.com/mac/version-#{version.after_comma}-Roblox.dmg"
  appcast 'https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer',
          configuration: version.after_comma
  name 'Roblox'
  homepage 'https://www.roblox.com/download'

  app 'Roblox.app'
end
