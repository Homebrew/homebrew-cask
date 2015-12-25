cask 'sleep-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'http://version.dssw.co.uk/sleepmonitor/standard',
          :sha256 => '9eb95c6a71ff0f70ece946a49ff9e6c5e48bdd08436e88a1d447263cb36e8ac2'
  name 'Sleep Monitor'
  homepage 'https://www.dssw.co.uk/sleepmonitor'
  license :commercial

  app 'Sleep Monitor.app'
end
