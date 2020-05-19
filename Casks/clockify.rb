cask 'clockify' do
  version '2.4.8'
  sha256 '111d1161c957101eb0aa291ad01d09f62a313b78af8025c55dc126e73e45e039'

  # clockify-resources.s3.eu-central-1.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip'
  appcast 'https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml'
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
