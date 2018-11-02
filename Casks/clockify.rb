cask 'clockify' do
  version '2.1.6_35'
  sha256 'f2aa4e09d90454a386f48f082b4f2fdd28285f0ac6ef5ac9c6e33d3b365bcf93'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
