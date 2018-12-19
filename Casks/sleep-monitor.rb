cask 'sleep-monitor' do
  version '3.0.2'
  sha256 '1c16e85c46726bca60cbe1c3840ccd99d66af383c921d45f190c4deea1dfeafd'

  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'https://version.dssw.co.uk/sleepmonitor/standard'
  name 'Sleep Monitor'
  homepage 'https://www.dssw.co.uk/sleepmonitor/'

  app 'Sleep Monitor.app'
end
