cask 'memory' do
  version '2019.21'
  sha256 '5dedf2c011d5e895dcf520643cbf6567105d001e3e17a3a99978b4761f60bc53'

  # timelytimetracking.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/Memory%20Tracker%20by%20Timely.zip'
  appcast 'https://timelytimetracking.s3.amazonaws.com/mac_tracker/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://timelyapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
