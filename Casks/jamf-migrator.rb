cask 'jamf-migrator' do
  version '5.2.8'
  sha256 '4909bfee8dab3df999f8e328a946c7f7d46293e23eb5485ed4ec317047bfc316'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
