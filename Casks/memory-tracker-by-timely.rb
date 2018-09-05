cask 'memory-tracker-by-timely' do
  version '1.1.1'
  sha256 '9b0793d338d2c47ea99f5e5bd497511610c2cd483215a16d149ba88745a4e881'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true

  app 'Memory Tracker by Timely.app'
end
