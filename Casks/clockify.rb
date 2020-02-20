cask 'clockify' do
  version '2.4.4'
  sha256 '914a219293b819b9e0aa455710030ed1c51c55d56cbedc06519aad7fd0944fb2'

  # clockify-resources.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip'
  appcast 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml'
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
