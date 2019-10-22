cask 'memory' do
  version '2019.28'
  sha256 'a7015c41e992879e9a2ffb49daff9262e7955c7c1dde01faccff47cb0eaa0c09'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
