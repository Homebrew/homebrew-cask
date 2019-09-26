cask 'clockify' do
  version '2.3.7'
  sha256 '0d542c92a0321285a656be45d9a34efff9b22924e71fb94f1f01fbacf2c327fd'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip'
  appcast 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml'
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
