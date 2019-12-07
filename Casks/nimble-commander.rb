cask 'nimble-commander' do
  version '1.2.6,3051'
  sha256 '7f04a2a5b51f6d4faf7a5eaf4c05a414744cc46b0be0e6fdeb8692cd9c6a4e5c'

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml'
  name 'Nimble Commander'
  homepage 'https://magnumbytes.com/'

  app 'Nimble Commander.app'
end
