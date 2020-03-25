cask 'jamf-migrator' do
  version '5.2.1'
  sha256 '868310c4540a91cab3864749243d34a91c54d38be0bc532046d8a9d62686e491'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
