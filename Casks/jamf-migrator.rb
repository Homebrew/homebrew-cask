cask 'jamf-migrator' do
  version '5.0.0'
  sha256 '637265a6b22195c4b70f9720459e9fb92aceef83960486be830a1be19aa9a3ec'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
