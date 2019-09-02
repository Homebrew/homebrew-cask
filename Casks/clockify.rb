cask 'clockify' do
  version '2.3.3.99'
  sha256 '27c63bb36ba76590687cda584850ce3001252592d08a479002e0528b00bbe4c5'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  appcast 'https://clockify.me/mac-time-tracking',
          configuration: version.no_dots
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
