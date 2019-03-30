cask 'memory-tracker-by-timely' do
  version '1.2.3'
  sha256 '8795e6d411b47a06c40807789d95a5994f697e9d334db389dcf9c118ab1bff4e'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true

  app 'Memory Tracker by Timely.app'
end
