cask 'jamf-migrator' do
  version '5.2.7'
  sha256 '284d22958ee06dc67dd58c6bbb280451f09cd867909259141eefe7508d7827ba'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
