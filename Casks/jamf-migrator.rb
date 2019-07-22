cask 'jamf-migrator' do
  version '3.3.4'
  sha256 '13ccb9dc0b6a3bd24fd29bcc3bf717fe8acbc9a79b00060319493013d18c064c'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
