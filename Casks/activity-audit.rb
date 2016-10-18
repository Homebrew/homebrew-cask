cask 'activity-audit' do
  version '1.1.6'
  sha256 '05ac32f70da4ecdf975b3b68507b937ba55a766c42d887367117ddad6e41b797'

  url "https://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/activityaudit/standard',
          checkpoint: 'b6f660015d4a8782fd78dfb75afb6242fc4c217d8c2e2954688f8e8c12263bf6'
  name 'Activity Audit'
  homepage 'https://www.dssw.co.uk/activityaudit'

  app 'Activity Audit.app'
end
