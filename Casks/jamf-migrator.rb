cask 'jamf-migrator' do
  version '2.8.2'
  sha256 'e5a1b13c7caf1794e218e4fd4c74d40ad4bdc4db14da65468fb42bfdbecc1035'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  app 'jamf-migrator.app'
end
