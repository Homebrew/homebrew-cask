cask 'memory-tracker-by-timely' do
  version '2019.20'
  sha256 '638a6ee46360fb4b63f737509d8963b1265cb9bfa43163c5048d49bec14075f8'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory Tracker by Timely.app'
end
