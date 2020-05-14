cask 'jamf-migrator' do
  version '5.2.3'
  sha256 '0c5d532cadc609bbffea6f857b0729f50d81bc2abb1b4e7ce644009bbbe40fb5'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
