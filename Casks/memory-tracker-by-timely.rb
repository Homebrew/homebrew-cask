cask 'memory-tracker-by-timely' do
  version '2019.13'
  sha256 'b0498923a89771e388c327d8fb214ecd849ddc824fe61322667027f9e9908175'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory Tracker by Timely.app'
end
