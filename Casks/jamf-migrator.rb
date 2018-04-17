cask 'jamf-migrator' do
  version '2.7.1'
  sha256 '86529ef9d9d0dcc659c1b5e5a7a35f0ee4ef4454537ff590168521ab5210d599'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom',
          checkpoint: 'a55817d73874f77e2a5056ab402054a6f288a939bb9c3874f0f0d8f8be7c2f64'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  app 'jamf-migrator.app'
end
