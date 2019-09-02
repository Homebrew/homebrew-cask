cask 'memory-tracker-by-timely' do
  version '2019.17'
  sha256 'a33bbe09e545cc1ecd338dfb57adc1d6a69b05d3e68f7fa1e410bfa0bf48c3ed'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory Tracker by Timely.app'
end
