cask 'locktight' do
  version '0.1.2'
  sha256 'fe36cee3caaa1c723b4ec7aa77135f42d2c4e4ae1a353bc0b481cd038458d8aa'

  url "http://www.crixa.com/LockTight_v#{version}.zip"
  name 'LockTight'
  homepage 'http://www.gkoya.com/2013/10/23/locktight-one-more-final-update-for-mac-os-x-mavericks-10-9/'
  license :gpl

  # not clear if the app is needed
  app 'SleepTightAgent.app'
  prefpane 'LockTight.prefPane'
end
