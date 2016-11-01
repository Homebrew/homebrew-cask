cask 'freeze' do
  version '2.7-233'
  sha256 '9d995ff91896d523854879fca756347d329a7be7feb058dc277608f1fea8af42'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '10dbe8d09826aa2540d2206ab4f3ee2b5ed69f4a115120a125cc1a234bcc5f83'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
