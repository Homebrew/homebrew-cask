cask 'jamf-migrator' do
  version '2.8.4'
  sha256 '61b6b0641208689251dfb2ab0c884dbf3bfff38c12f91d06ebd1037d7df7e2e7'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
