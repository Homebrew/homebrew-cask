cask 'memory-tracker-by-timely' do
  version '1.2.6'
  sha256 '1948e319b139828be9913ca2878a20a1e49eba8a9ba57e900f750bc4973d6132'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true

  app 'Memory Tracker by Timely.app'
end
