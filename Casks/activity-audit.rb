cask :v1 => 'activity-audit' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/activityaudit/dsswactivityaudit.dmg'
  appcast 'http://version.dssw.co.uk/activityaudit/standard'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
