cask 'sleepyhead' do
  version '0.9.8-1-T3'
  sha256 '63614d8941d850aaf4e96e1e0cdd262250e04560811123f772af4d005c701281'

  # apneaboard.com is the official download host per the vendor homepage
  url "http://www.apneaboard.com/SH/Programs/SleepyHead-Testing-#{version}-MacOSX.dmg"
  name 'SleepyHead OpenSource CPAP Review Software'
  homepage 'http://www.sleepfiles.com/SH2/'
  license :gpl

  app 'SleepyHead.app'
end
