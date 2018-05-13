cask 'jamf-migrator' do
  version '2.7.2'
  sha256 '781797e0116196b9b75bf243f98a1394a2e90da59d3ded0b81e61334bc7b34d6'

  url 'https://github.com/jamfprofessionalservices/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamfprofessionalservices/JamfMigrator/releases.atom',
          checkpoint: '6682226fd23867f9524bc67841ffce9eb0ad848d3bfa6fcfb4ea2013e4902857'
  name 'JamfMigrator'
  homepage 'https://github.com/jamfprofessionalservices/JamfMigrator'

  app 'jamf-migrator.app'
end
