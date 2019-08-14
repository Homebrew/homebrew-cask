cask 'clockify' do
  version '2.3.1.93'
  sha256 '553e4f7a3c8eadf3331fb37b9eccabb5166d34fdf02bdb7be41aa0d58f87b6ab'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  appcast 'https://clockify.me/mac-time-tracking',
          configuration: version.no_dots
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
