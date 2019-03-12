cask 'jamf-migrator' do
  version '3.2.2'
  sha256 '9c7343093260bc7d4a21c097fce5359ed744683c3d1338a5fe97bb1f52e8b284'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
