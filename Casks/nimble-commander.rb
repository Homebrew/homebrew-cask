cask 'nimble-commander' do
  version '1.2.3,2596'
  sha256 '3d4edf2a73163cc4bf3729ab89c571b67ed51aa070be52140512ef14b4fcfa50'

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml',
          checkpoint: '351c5b5bae4fbebf7eb8682b9277f404f676add38ab65235daf3272f136b61c6'
  name 'Nimble Commander'
  homepage 'https://magnumbytes.com/'

  app 'Nimble Commander.app'
end
