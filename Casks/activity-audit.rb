cask :v1 => 'activity-audit' do
  version '1.1.5'
  sha256 '5e37e7912e679c0392c25125f577a639a73e8aaef7f7364c4364b29e12726ebb'

  url "http://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.delete('.')}.dmg"
  name 'Activity Audit'
  appcast 'http://version.dssw.co.uk/activityaudit/standard'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
