cask 'activity-audit' do
  version '1.1.5'
  sha256 '5e37e7912e679c0392c25125f577a639a73e8aaef7f7364c4364b29e12726ebb'

  url "https://www.dssw.co.uk/activityaudit/dsswactivityaudit-#{version.delete('.')}.dmg"
  appcast 'https://version.dssw.co.uk/activityaudit/standard',
          :sha256 => 'ac63a66d06ecf116f7ad04b5b680b12f0534e07685e6eb9dfe4e13f9b03ce508'
  name 'Activity Audit'
  homepage 'https://www.dssw.co.uk/activityaudit'
  license :commercial

  app 'Activity Audit.app'
end
