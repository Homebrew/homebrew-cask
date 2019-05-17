cask 'memory-tracker-by-timely' do
  version '1.2.5'
  sha256 '6f8e21fb210e29876293d00af590a6336f0c7b82fed99d053249f045047980a3'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true

  app 'Memory Tracker by Timely.app'
end
