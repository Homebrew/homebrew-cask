cask 'jamf-migrator' do
  version '3.3.1'
  sha256 '8487a42fabc90c9679fb80d164f9749b6e41e9a2fa58736830fd850de1c0b6c5'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
