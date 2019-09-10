cask 'clockify' do
  version '2.3.6'
  sha256 'f70c9c922602ba850de6813a6d63d3b3c565d55a89598187785cfef2451fec74'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip'
  appcast 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml'
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
