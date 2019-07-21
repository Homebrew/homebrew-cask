cask 'clockify' do
  version '2.2.8.83'
  sha256 '8836c2f920d241854ec1a8a79ba871f7b02bdd56e6ca748a9bbd1f39c96de7c7'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  appcast 'https://clockify.me/mac-time-tracking',
          configuration: version.no_dots
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
