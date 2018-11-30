cask 'jamf-migrator' do
  version '3.1.0'
  sha256 '08ab008555ba5fb50e9b64a253a3064978d1bbc2bd9713e3f3b4719eeb0523c5'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
