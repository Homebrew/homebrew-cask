cask 'jamf-migrator' do
  version '5.0.3'
  sha256 'ecb7eedb4221488f920424256105c7745b973e012f2df68bce1e97d72851915d'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
