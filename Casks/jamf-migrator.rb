cask 'jamf-migrator' do
  version '3.3.5'
  sha256 'd33922f2542339393cb75d084c7aae8ce52019f997016f7730ad63b25603763d'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
