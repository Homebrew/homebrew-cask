cask 'jamf-migrator' do
  version '4.1.3'
  sha256 'd1a081ecf3d9a4153763e74fc346fb9a8f301a4d262df073f208171c219205ff'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
