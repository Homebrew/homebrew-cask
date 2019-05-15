cask 'jamf-migrator' do
  version '3.3.2'
  sha256 '16699cd826648abd91afcff302e0a1a23efbd636184005704643a2fd3b6da6a5'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
