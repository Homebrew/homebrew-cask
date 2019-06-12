cask 'memory-tracker-by-timely' do
  version '1.2.10'
  sha256 '224b0383c5d905fd2ca8521f3a983e1c54e20ce9a433e4b9b2f453b08b5040dd'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true

  app 'Memory Tracker by Timely.app'
end
