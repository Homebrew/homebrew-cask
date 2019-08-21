cask 'memory-tracker-by-timely' do
  version '2019.16'
  sha256 'bf84445120f810d4a0a952cc394ba9e6733837db3516a2b1c36b87561ca3da4d'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory Tracker by Timely.app'
end
