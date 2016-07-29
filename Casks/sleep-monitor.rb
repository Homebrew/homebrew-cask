cask 'sleep-monitor' do
  version '3.0.2'
  sha256 '673481aa7fcbf3781074e962bb41c59fdc4a18cf96f4cd9333ad231649bc95e6'

  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'https://version.dssw.co.uk/sleepmonitor/standard',
          checkpoint: '495f3bf7b2abb0728d57f5e1a7648e0a55d8a38f0084591c25c944401f7ce31e'
  name 'Sleep Monitor'
  homepage 'https://www.dssw.co.uk/sleepmonitor'
  license :commercial

  app 'Sleep Monitor.app'
end
