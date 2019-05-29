cask 'clockify' do
  version '2.2.6.73'
  sha256 'd83bcfb29c79418eb76150d7c01a54f0321a4bc25269fbc92d88ac32a3c82531'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
