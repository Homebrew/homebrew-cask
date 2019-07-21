cask 'nimble-commander' do
  version '1.2.5,2846'
  sha256 'b18240ff5642342ab8eb4f258b3d665e2f5b90e6fd09b0f1c283fae95a9cd490'

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml'
  name 'Nimble Commander'
  homepage 'https://magnumbytes.com/'

  app 'Nimble Commander.app'
end
