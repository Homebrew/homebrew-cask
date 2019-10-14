cask 'jamf-migrator' do
  version '4.1.0'
  sha256 'bf93928581e81bbd2eb8072a61533173f891e5cb83dad257f18824343d9c289d'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
