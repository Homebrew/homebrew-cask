cask 'jamf-migrator' do
  version '2.2.8'
  sha256 '5825c6e7d6146a876bc911af0eaaa835c038cb74578ef394c782a9986c2399fe'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom',
          checkpoint: 'f37156fc086e1864577aa11a93b1915566ca9cb46a44837e7151b2ea17b7ade5'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  app 'jamf-migrator.app'
end
