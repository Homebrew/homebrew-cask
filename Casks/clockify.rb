cask 'clockify' do
  version '2.3.5.105'
  sha256 '7d55b3054e6a83029547bd58c42879503090924e752b870c864e6a9b1ef537b7'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  appcast 'https://clockify.me/mac-time-tracking',
          configuration: version.no_dots
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
