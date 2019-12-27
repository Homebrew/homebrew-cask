cask 'jamf-migrator' do
  version '5.0.1'
  sha256 '6168d3515fb5496b657ffa90251de9113442545981ef072b11b528ad0a840c77'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
