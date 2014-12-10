cask :v1 => 'sleep-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'http://version.dssw.co.uk/sleepmonitor/standard'
  homepage 'https://www.dssw.co.uk/sleepmonitor'
  license :unknown    # todo: improve this machine-generated value

  app 'Sleep Monitor.app'
end
