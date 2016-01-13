cask 'activity-audit' do
  version '1.1.5'
  sha256 '5e37e7912e679c0392c25125f577a639a73e8aaef7f7364c4364b29e12726ebb'

  url "https://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.delete('.')}.dmg"
  appcast 'https://version.dssw.co.uk/activityaudit/standard',
          :sha256 => '7448ca53f9dc86e759559af137cc2c97d748fde2863d41e9e7769f4251fdedcd'
  name 'Activity Audit'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
