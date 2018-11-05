cask 'jamf-migrator' do
  version '3.0.0'
  sha256 '27919f9976f5e48aee429210953133f238eae5247176f031228c939d974ddc61'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
