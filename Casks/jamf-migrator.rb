cask 'jamf-migrator' do
  version '5.2.5'
  sha256 '4d7fe507e11e2b428425e59d7c336853e61fe60842dac98a13065bcf71d6d7d1'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
