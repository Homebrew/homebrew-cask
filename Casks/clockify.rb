cask 'clockify' do
  version '2.1.6_35'
  sha256 '528cb1676f74beee35b0d9f3d138875203be1740d4874a5f482df691ac70f77d'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
