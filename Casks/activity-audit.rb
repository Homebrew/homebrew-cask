cask 'activity-audit' do
  version '1.1.5'
  sha256 '5e37e7912e679c0392c25125f577a639a73e8aaef7f7364c4364b29e12726ebb'

  url "https://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.delete('.')}.dmg"
  appcast 'https://version.dssw.co.uk/activityaudit/standard',
          checkpoint: '5f9d1cbe7a9b3b1024fe88c4cc561d48c5eb2b93e5e912fa06ab0bf80c2e53d8'
  name 'Activity Audit'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
