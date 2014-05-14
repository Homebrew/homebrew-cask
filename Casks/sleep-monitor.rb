class SleepMonitor < Cask
  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'http://version.dssw.co.uk/sleepmonitor/standard'
  homepage 'https://www.dssw.co.uk/sleepmonitor'
  version 'latest'
  sha256 :no_check
  link 'Sleep Monitor.app'
end
