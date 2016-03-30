cask 'activity-audit' do
  version '1.1.6'
  sha256 '8c07687c52136923971ffa9a08f6597a2edf0d3a34c9cfd003ebbf98b30c3816'

  url "https://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.delete('.')}.dmg"
  appcast 'https://version.dssw.co.uk/activityaudit/standard',
          checkpoint: '79f1a8f177c3f2bf00d051091eb742a420c2ab26729456bb3c7f6b51ec51e78e'
  name 'Activity Audit'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
