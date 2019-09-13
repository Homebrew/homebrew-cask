cask 'memory-tracker-by-timely' do
  version '2019.18'
  sha256 'e07d7d5ca79644225edddd30b0c4cc60df1cd01787fa9313d127bda57f4e9442'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory Tracker by Timely.app'
end
