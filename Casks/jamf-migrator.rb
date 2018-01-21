cask 'jamf-migrator' do
  version '2.6.2'
  sha256 '2c52e92493ce465490c749f1f29b1bdb48d20ea0fadf1f85800b5beeeb8ab2a1'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom',
          checkpoint: '30dd7a5e724c655d5655440f7bc35aa8f0a67b7e048b0050cc4b47b893c638a8'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  app 'jamf-migrator.app'
end
