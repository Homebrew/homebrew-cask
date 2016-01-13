cask 'sleep-monitor' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/sleepmonitor/dsswsleepmonitor.dmg'
  appcast 'https://version.dssw.co.uk/sleepmonitor/standard',
          :checkpoint => 'c15b9fa6129ab99305d23e69ff635771f1bcc97dc9da3e31d16b428c54cc7ecb'
  name 'Sleep Monitor'
  homepage 'https://www.dssw.co.uk/sleepmonitor'
  license :commercial

  app 'Sleep Monitor.app'
end
