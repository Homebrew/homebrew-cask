cask 'nimble-commander' do
  version '1.2.4,2676'
  sha256 '3b1d984b81225e17f2a767d8ceb14306bca21522df7f9c6d7954a932389707d5'

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml'
  name 'Nimble Commander'
  homepage 'https://magnumbytes.com/'

  app 'Nimble Commander.app'
end
