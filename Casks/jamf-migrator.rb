cask 'jamf-migrator' do
  version '4.0.1'
  sha256 '71f46870b5b5e3392f206caf6524ef63fb70b4d349188f9feaf9cc7fbb31e041'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
