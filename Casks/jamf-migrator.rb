cask 'jamf-migrator' do
  version '3.3.3'
  sha256 '0e2730e810db62090320b7580d9499f79e4ccaab9f7b9e8b0f64a427d6f123b0'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
