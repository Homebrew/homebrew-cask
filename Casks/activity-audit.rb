class ActivityAudit < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://www.dssw.co.uk/activityaudit/dsswactivityaudit.dmg'
  appcast 'http://version.dssw.co.uk/activityaudit/standard'
  homepage 'https://www.dssw.co.uk/activityaudit'

  link 'Activity Audit.app'
end
