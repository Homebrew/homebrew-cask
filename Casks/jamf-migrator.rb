cask 'jamf-migrator' do
  version '3.1.2'
  sha256 'b4e79a941a631a1ee5a1bd99d30c438ad369b4a16e11d0d439e7200d95e816bb'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
