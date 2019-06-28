cask 'clockify' do
  version '2.2.7.79'
  sha256 'dc08e87e274cc81a56a464095bed7512d31f0991de94e93ae967273d43482908'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  appcast 'https://clockify.me/mac-time-tracking',
          configuration: version.no_dots
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
